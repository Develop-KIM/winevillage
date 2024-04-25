package com.winevillage.winevillage.product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import utils.PagingUtil;

@Controller
public class ProductController {
	
	@Autowired
	ProductService dao;
	
	@GetMapping("/admin_product_lists.do")
	public String productLists(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO) {
		
		int totalCount = dao.getTotalCount(parameterDTO);
		int pageSize = 10;
		int blockPage = 5;
		int pageNum = (req.getParameter("pageNum")==null || req.getParameter("pageNum").equals(""))
				? 1 : Integer.parseInt(req.getParameter("pageNum"));
		int start = (pageNum-1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("totalCount", totalCount);
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		model.addAttribute("maps", maps);
		
		ArrayList<ProductDTO> lists = dao.listPage(parameterDTO);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_product_lists.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		
		
		return "admin/admin_product/admin_product_lists";
	}
	
	@GetMapping("/admin_product_form.do")
	public String productFormGet(Model model) {
		return "admin/admin_product/admin_product_form";
	}
	
	@PostMapping("/admin_product_form.do")
	public String productFormPost(ProductDTO productDTO) {

		int result = dao.productWrite(productDTO);
		if(result==1) System.out.println("입력완료");;
		
		return "redirect:admin_product_lists.do";
		
		
	}
}







