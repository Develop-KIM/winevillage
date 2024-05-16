package com.winevillage.winevillage.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.product.ParameterDTO;
import com.winevillage.winevillage.product.ProductDTO;
import com.winevillage.winevillage.product.ProductService;
import com.winevillage.winevillage.qna.QNADTO;

@Controller
public class ProductViewController {
	
	@Autowired
	ProductService dao;
	
	@GetMapping("/product_view.do")
	public String productView(Model model, ProductDTO productDTO,
			@RequestParam(name = "category", required = false) String category,
			@RequestParam(name = "state", required = false) String state,
			@RequestParam(name = "sort", required = false) String sort,
			ParameterDTO parameterDTO) {

		productDTO = dao.productView(productDTO);
		parameterDTO.setCategory(category);
		parameterDTO.setState(state);
		parameterDTO.setSort(sort);

		model.addAttribute("category", category);
		model.addAttribute("state", state);
		model.addAttribute("sort", sort);
		model.addAttribute("productDTO", productDTO);
		String uppercaseCategory = null; 
		if (category != null) {
		uppercaseCategory = category.toUpperCase();
		}
		model.addAttribute("uppercaseCategory", uppercaseCategory); 
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
boolean loggedIn = true;
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			String currentUsername = auth.getName();
			// 마지막 로그인한 사용자가 anonymousUser인지 확인
			// 로그인한 사용자가 없으면 anonymousUser
			if (currentUsername.equals("anonymousUser")) {
				// 로그인하지 않은 사용자에 대한 처리
				loggedIn = false;
			}
			else {
				UserDetails userDetails = (UserDetails) auth.getPrincipal();
				// 로그인한 사용자의 정보를 활용한 처리
			}
		}
		
		model.addAttribute("loggedIn", loggedIn);
		
		
		ProductDTO user = new ProductDTO();
		if (authentication != null) {
			String memberId = authentication.getName();
			ProductDTO memberView = dao.memberView(memberId);
			
			if (memberView != null) {
				user.setMemberNo(memberView.getMemberNo());
				user.setMemberId(memberView.getMemberId());
				user.setName(memberView.getName());
			}
		}
		
		
		
		model.addAttribute("user", user);
		
		return "shop/product_view";
	}
}
