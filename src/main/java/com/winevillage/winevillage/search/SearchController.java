package com.winevillage.winevillage.search;

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

import com.winevillage.winevillage.search.ISearchService;
import com.winevillage.winevillage.search.SearchDTO;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class SearchController {

	@Autowired
	ISearchService dao;
	
	@RequestMapping("/search_product_list.do")
	public String searchProductList(Model model, SearchDTO searchDTO, HttpServletRequest request) {
		
	    int totalCount = dao.searchTotalCount(searchDTO);
	    int totalCountKeyword = dao.searchTotalCountKeyword(searchDTO);

	    Map<String, Object> maps = new HashMap<String, Object>();
	    maps.put("totalCount", totalCount);
	    maps.put("totalCountKeyword", totalCountKeyword);

	    
	    String actionBtn = request.getParameter("action_btn");
	    
	    if ("search".equals(actionBtn)) {
	    	System.out.println("search=" +actionBtn);
	    	maps.remove("totalCount", totalCount);
	    	
	        model.addAttribute("productList", dao.select(searchDTO));
	        model.addAttribute("maps", maps);
	        model.addAttribute("searchKeyword", searchDTO.getSearchKeyword());
	        model.addAttribute("totalCountKeyword", totalCountKeyword);
	        model.addAttribute("actionBtn", actionBtn);
	        
	        System.out.println(searchDTO.getProductCode());
	    } 
	    else if("apply".equals(actionBtn)){
	    	System.out.println("apply=" +actionBtn);
	    	maps.remove("totalCountKeyword", totalCountKeyword);
	    	
	        model.addAttribute("productList", dao.select(searchDTO));
	        model.addAttribute("maps", maps);
	        model.addAttribute("searchKeyword", searchDTO.getSearchKeyword());
	        model.addAttribute("totalCount", totalCount); 
	        model.addAttribute("actionBtn", actionBtn);
	    }

	    System.out.println(searchDTO.getSearchField());
	    System.out.println(searchDTO.getSearchKeyword());
	    System.out.println(maps);

	    return "shop/search_product_list";
	}

}
