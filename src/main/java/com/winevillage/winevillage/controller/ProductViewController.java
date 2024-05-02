package com.winevillage.winevillage.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.winevillage.winevillage.product.ParameterDTO;
import com.winevillage.winevillage.product.ProductDTO;
import com.winevillage.winevillage.product.ProductService;

@Controller
public class ProductViewController {
	
	@Autowired
	ProductService dao;
	
	@GetMapping("/product_view.do")
	public String productView(Model model, ProductDTO productDTO) {
		productDTO = dao.productView(productDTO);
		model.addAttribute("productDTO", productDTO);
		return "shop/product_view";
	}
}
