package com.winevillage.winevillage.cart;

import java.security.Principal;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.user.UserService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class CartListController {

    private final CartListService cartListService;
    private final UserService userService;

    @Autowired
    public CartListController(CartListService cartListService, UserService userService) {
        this.cartListService = cartListService;
        this.userService = userService;
    }

    @PostMapping("/addToCart")
    public ResponseEntity<?> addToCart(@RequestParam("productCode") String productCode,
                                       HttpServletRequest request, HttpServletResponse response) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            String username = authentication.getName();
            Long memberNo = findMemberNoByUsername(username);
            cartListService.addProductToMemberCart(productCode, memberNo);
            return ResponseEntity.ok().body(Map.of("status", "success", "message", "장바구니에 추가되었습니다."));
        } else {
            String cookieId = null;
            Cookie cartCookie = getCookie(request, "COOKIE_ID");
            if (cartCookie != null) {
                cookieId = cartCookie.getValue();
            } else {
                cookieId = createUniqueCookieId();
                Cookie newCartCookie = new Cookie("COOKIE_ID", cookieId);
                newCartCookie.setMaxAge(24 * 60 * 60); // 24시간
                newCartCookie.setPath("/");
                response.addCookie(newCartCookie);
            }
            cartListService.addProductToNonMemberCart(productCode, cookieId);
            return ResponseEntity.ok().body(Map.of("status", "success", "message", "장바구니에 추가되었습니다."));
        }
    }

    @GetMapping("/cart_list.do")
    public String viewCart(Model model, HttpServletRequest request, Principal principal) {
        String cookieId = null;
        Cookie[] cookies = request.getCookies();
        
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("COOKIE_ID".equalsIgnoreCase(cookie.getName())) {
                    cookieId = cookie.getValue();
                    break;
                }
            }
        }

        List<?> cartList;
        
        if (principal != null) {
            String username = principal.getName();
            Long memberNo = findMemberNoByUsername(username);
            cartList = cartListService.getCartListByMemberNo(memberNo);
        } else if (cookieId != null) {
            cartList = cartListService.getCartListByCookieId(cookieId);
        } else {
            cartList = List.of();
        }
        model.addAttribute("cartList", cartList);
        
        return "order/cart_list";
    }
    
    private Long findMemberNoByUsername(String username) {
        return userService.findMemberNoByUsername(username); 
    }

    private String createUniqueCookieId() {
        return UUID.randomUUID().toString();
    }

    private Cookie getCookie(HttpServletRequest request, String name) {
        if (request.getCookies() != null) {
            for (Cookie cookie : request.getCookies()) {
                if (name.equals(cookie.getName())) {
                    return cookie;
                }
            }
        }
        return null;
    }
    
    @PostMapping("/update-quantity")
    public ResponseEntity<CartListDTO> updateOrderQuantity(@RequestParam("orderNo") Long orderNo,
                                                 @RequestParam("productCode") String productCode,
                                                 @RequestParam("orderAmount") int orderAmount) {
        try {
            cartListService.updateOrderQuantity(orderNo, productCode, orderAmount);
            
            CartListDTO cartListDTO = cartListService.getCartItem(orderNo, productCode);
            
            return ResponseEntity.ok(cartListDTO);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}
