package com.winevillage.winevillage.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.winevillage.winevillage.product.ProductDTO;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {

    @PostMapping("/addToCart")
    public String addToCart(ProductDTO productDTO, HttpSession session) {
        // 세션에서 장바구니 정보 가져오기
        List<ProductDTO> cartItems = (List<ProductDTO>) session.getAttribute("cartItems");
        
        // 장바구니에 상품 추가
        cartItems.add(productDTO);

        // 장바구니 정보를 세션에 저장
        session.setAttribute("cartItems", cartItems);

        // 장바구니 페이지로 리다이렉트
        return "redirect:/cart";
    }

    @GetMapping("/cart")
    public String viewCart(HttpSession session, Model model) {
        // 세션에서 장바구니 정보 가져오기
        List<ProductDTO> cartItems = (List<ProductDTO>) session.getAttribute("cartItems");
        model.addAttribute("cartItems", cartItems);

        // 장바구니 페이지로 이동
        return "cart";
    }
}