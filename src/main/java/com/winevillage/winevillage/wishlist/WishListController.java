package com.winevillage.winevillage.wishlist;

import java.security.Principal;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class WishListController {

	private WishListService wishListService;
	
	@Autowired
	public WishListController(WishListService wishListService) {
		this.wishListService = wishListService;
	}
	
	@GetMapping("/member/wish_list.do")
	public String wish_list(Model model,HttpServletRequest request, Principal principal) {
		if (principal == null) {
		        return null; 
		    } else {
		        String user_id = principal.getName();
		        String memberNo = wishListService.getMemberNo(user_id);
        List<?> wishList;
        int totalCount = wishListService.wishListCount(memberNo);
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("totalCount", totalCount);
        wishList = wishListService.WishListView(memberNo);
		model.addAttribute("wishList", wishList);
		model.addAttribute("maps", maps);
		
		return "order/wish_list";
		    }
	}
	
	@PostMapping("/addToWishList")
    public ResponseEntity<WishListDTO> addToWishlist(@RequestParam("productCode") String productCode) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String user_id = authentication.getName();
        String memberNo = wishListService.getMemberNo(user_id);
        
        wishListService.addToWishList(productCode, memberNo);
		return ResponseEntity.ok().build();
	}
	
	@PostMapping("/deleteWishList")
	public ResponseEntity<WishListDTO> deleteWishList(@RequestParam("productCode") String productCode) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String user_id = authentication.getName();
        String memberNo = wishListService.getMemberNo(user_id);
        
        wishListService.deleteWishList(productCode, memberNo);	
        return ResponseEntity.ok().build();
	}
	
	@GetMapping("/getWishList")
	@ResponseBody
    public List<WishListDTO> getWishList(Principal principal) {
		  if (principal == null) {
		        return Collections.emptyList(); 
		    } else {
		        String user_id = principal.getName();
		        String memberNo = wishListService.getMemberNo(user_id);
		        return wishListService.getWishList(memberNo);
		    }
	}
	
}