package com.winevillage.winevillage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.product.ParameterDTO;
import com.winevillage.winevillage.product.ProductDTO;
import com.winevillage.winevillage.product.ProductService;

import jakarta.servlet.http.HttpServletRequest;
import utils.ProductPagination;

@Controller
public class ProductListController {

	@Autowired
	ProductService dao;

	@GetMapping("/list_product.do")
	public String list_Product(Model model, HttpServletRequest req,
			@RequestParam(name = "category", required = false) String category, 
			@RequestParam(name = "state", required = false) String state, 
			@RequestParam(name = "sort", required = false) String sort,
			ParameterDTO parameterDTO) {

		parameterDTO.setSort(sort);
		parameterDTO.setState(state);
	    parameterDTO.setCategory(category);
	    parameterDTO.setStateNotNull(true); 
	    
	    
	    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String user_id = authentication.getName();
        String memberInfo = dao.getMemberInfo(user_id);
        
		int ProductCount = dao.ProductCount(parameterDTO);

		int pageSize = 25;
		int blockPage = 10;
		int pageNum = (req.getParameter("pageNum") == null || req.getParameter("pageNum").equals("")) ? 1
				: Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;

		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);

		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		maps.put("ProductCount", ProductCount);
		model.addAttribute("memberInfo", memberInfo);
		model.addAttribute("maps", maps);
		model.addAttribute("category", category);
		model.addAttribute("state", state);
		model.addAttribute("sort", sort);
		String uppercaseCategory = null; 
		String uppercaseState = null;
		if (category != null) {
		uppercaseCategory = category.toUpperCase();
		}
		if (state != null) {
		uppercaseState = state.toUpperCase();
		}
		model.addAttribute("uppercaseCategory", uppercaseCategory); 
		model.addAttribute("uppercaseState", uppercaseState);
		ArrayList<ProductDTO> lists = dao.listProduct(parameterDTO);
		model.addAttribute("lists", lists);

		String pagination = ProductPagination.pagination(ProductCount, pageSize, blockPage, pageNum,
				req.getContextPath() + "/list_product.do?" + "category=" + category + "&" + "state=" +  state + "&" + "sort=" + sort + "&");

		model.addAttribute("pagination", pagination);

		return "shop/product_list";
	}
}
