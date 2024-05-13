package com.winevillage.winevillage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.product.ParameterDTO;
import com.winevillage.winevillage.product.ProductDTO;
import com.winevillage.winevillage.product.ProductService;

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
		}		model.addAttribute("uppercaseCategory", uppercaseCategory); 
		return "shop/product_view";
	}
}
