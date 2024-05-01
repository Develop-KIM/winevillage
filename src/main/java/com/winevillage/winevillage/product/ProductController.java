package com.winevillage.winevillage.product;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.winevillage.winevillage.product.IProductService;
import com.winevillage.winevillage.product.ProductDTO;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ProductController {

	@Autowired
	IProductService dao;
	

	@RequestMapping("/search_product_list.do")
	public String member2(Model model, ProductDTO productDTO) {
		
	
		System.out.println(productDTO.getSearchField());
		System.out.println(productDTO.getSearchKeyword());
		
		model.addAttribute("productList", dao.select(productDTO));
		
		return "search_product_list";
	}

}
