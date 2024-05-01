package com.winevillage.winevillage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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

	@GetMapping("/list_wine.do")
	public String list_Wine(Model model, HttpServletRequest req,
			@RequestParam(name = "category", required = false) String category, ParameterDTO parameterDTO) {

	    parameterDTO.setCategory(category);

		int totalCount = dao.getTotalCount(parameterDTO);
		int wineCount = dao.Wine_count(parameterDTO);

		int pageSize = 25;
		int blockPage = 10;
		int pageNum = (req.getParameter("pageNum") == null || req.getParameter("pageNum").equals("")) ? 1
				: Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;

		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);

		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("totalCount", totalCount);
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		maps.put("wineCount", wineCount);
		model.addAttribute("maps", maps);
		model.addAttribute("category", category);

		String uppercaseCategory = null; 
		if (category != null) {
		uppercaseCategory = category.toUpperCase();
		}
		model.addAttribute("uppercaseCategory", uppercaseCategory); 

		ArrayList<ProductDTO> lists = dao.listWine(parameterDTO);
		model.addAttribute("lists", lists);

		String pagination = ProductPagination.pagination(wineCount, pageSize, blockPage, pageNum,
				req.getContextPath() + "/list_wine.do?" + "category=" + category + "&");

		model.addAttribute("pagination", pagination);

		return "shop/wine/product_list_Wine";
	}
//	
//	@GetMapping("/list_wine_white.do")
//	public String List_white(Model model, HttpServletRequest req, 
//			ParameterDTO parameterDTO) {
//		
//	    parameterDTO.setWineType("화이트");
//
//		
//		int totalCount = dao.getTotalCount(parameterDTO);
//
//		int pageSize = 25;
//		int blockPage = 10;
//		int pageNum = (req.getParameter("pageNum")==null || req.getParameter("pageNum").equals(""))
//				? 1 : Integer.parseInt(req.getParameter("pageNum"));
//		int start = (pageNum-1) * pageSize + 1;
//		int end = pageNum * pageSize;
//		
//		parameterDTO.setStart(start);
//		parameterDTO.setEnd(end);
//		
//		Map<String, Object> maps = new HashMap<String, Object>();
//		maps.put("totalCount", totalCount);
//		maps.put("pageSize", pageSize);
//		maps.put("pageNum", pageNum);
//		model.addAttribute("maps", maps);
//		
//		ArrayList<ProductDTO> lists = dao.listWine(parameterDTO);
//		model.addAttribute("lists", lists);
//		
//		String pagination = ProductPagination.pagination(totalCount, pageSize, blockPage, pageNum, 
//				req.getContextPath()+"/list_wine_white.do?");
//		
//		model.addAttribute("pagination", pagination);
//		
//		
//		
//		return "shop/wine/product_list_White";
//	}
//	@GetMapping("/list_wine_red.do")
//	public String List_Red(Model model, HttpServletRequest req, 
//			ParameterDTO parameterDTO) {
//		
//	    parameterDTO.setWineType("레드");
//
//		
//		int totalCount = dao.getTotalCount(parameterDTO);
//
//		int pageSize = 25;
//		int blockPage = 10;
//		int pageNum = (req.getParameter("pageNum")==null || req.getParameter("pageNum").equals(""))
//				? 1 : Integer.parseInt(req.getParameter("pageNum"));
//		int start = (pageNum-1) * pageSize + 1;
//		int end = pageNum * pageSize;
//		
//		parameterDTO.setStart(start);
//		parameterDTO.setEnd(end);
//		
//		Map<String, Object> maps = new HashMap<String, Object>();
//		maps.put("totalCount", totalCount);
//		maps.put("pageSize", pageSize);
//		maps.put("pageNum", pageNum);
//		model.addAttribute("maps", maps);
//		
//		ArrayList<ProductDTO> lists = dao.listWine(parameterDTO);
//		model.addAttribute("lists", lists);
//		
//		String pagination = ProductPagination.pagination(totalCount, pageSize, blockPage, pageNum, 
//				req.getContextPath()+"/list_wine_white.do?");
//		
//		model.addAttribute("pagination", pagination);
//		
//		
//		
//		return "shop/wine/product_list_Red";
//	}
//	@GetMapping("/list_wine_sparkling.do")
//	public String List_Sparkling(Model model, HttpServletRequest req, 
//			ParameterDTO parameterDTO) {
//		
//	    parameterDTO.setWineType("스파클링");
//
//		
//		int totalCount = dao.getTotalCount(parameterDTO);
//
//		int pageSize = 25;
//		int blockPage = 10;
//		int pageNum = (req.getParameter("pageNum")==null || req.getParameter("pageNum").equals(""))
//				? 1 : Integer.parseInt(req.getParameter("pageNum"));
//		int start = (pageNum-1) * pageSize + 1;
//		int end = pageNum * pageSize;
//		
//		parameterDTO.setStart(start);
//		parameterDTO.setEnd(end);
//		
//		Map<String, Object> maps = new HashMap<String, Object>();
//		maps.put("totalCount", totalCount);
//		maps.put("pageSize", pageSize);
//		maps.put("pageNum", pageNum);
//		model.addAttribute("maps", maps);
//		
//		ArrayList<ProductDTO> lists = dao.listWine(parameterDTO);
//		model.addAttribute("lists", lists);
//		
//		String pagination = ProductPagination.pagination(totalCount, pageSize, blockPage, pageNum, 
//				req.getContextPath()+"/list_wine_white.do?");
//		
//		model.addAttribute("pagination", pagination);
//		
//		
//		
//		return "shop/wine/product_list_White";
//	}

}
