package com.winevillage.winevillage.product;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
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
		int blockPage = 10;
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
	public String productFormPost(HttpServletRequest req, ProductDTO productDTO, Model model) {
		try {
			String uploadDirectory = ResourceUtils
				.getFile("classpath:static/uploads/product/200").toPath().toString();
			System.out.println("물리적경로: "+uploadDirectory);
			Part part = req.getPart("imgUpload");
			String partHeader = part.getHeader("content-disposition");
			String[] phArr = partHeader.split("filename=");
			String originalFileName = phArr[1].trim().replace("\"", "");
			if(!originalFileName.isEmpty()) {
				part.write(uploadDirectory + File.separator + originalFileName);
			}
			model.addAttribute("originalFileName", originalFileName);
			
			productDTO.setProductImg(originalFileName);			
			
			int result = dao.productWrite(productDTO);
			if(result==1) System.out.println("입력완료");;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("상품 등록 실패");
		}
		return "redirect:admin_product_lists.do";
	}
	
	@GetMapping("/admin_product_edit.do")
	public String productEditGet(Model model, ProductDTO productDTO) {
		productDTO = dao.productView(productDTO);
		productDTO.setProductInfo(productDTO.getProductInfo()
				  .replace("\r\n", "<br/>"));
		model.addAttribute("productDTO", productDTO);
		return "admin/admin_product/admin_product_edit";
	}
	
	@PostMapping("/admin_product_edit.do")
	public String productEditPost(HttpServletRequest req, ProductDTO productDTO, Model model) {
		try {
			String uploadDirectory = ResourceUtils
			.getFile("classpath:static/uploads/product/200").toPath().toString();
			Part part = req.getPart("imgUpload");
			String partHeader = part.getHeader("content-disposition");
			String[] phArr = partHeader.split("filename=");
			String originalFileName = phArr[1].trim().replace("\"", "");
			if(!originalFileName.isEmpty()) {
				part.write(uploadDirectory + File.separator + originalFileName);
			}
			model.addAttribute("originalFileName", originalFileName);
			productDTO.setProductImg(originalFileName);			
			int result = dao.productEdit(productDTO);
			System.out.println("글수정결과:" + result);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("상품 수정 실패");
		}

		return "redirect:admin_product_lists.do";
	}
	
	@PostMapping("/admin_product_delete.do")
	public String productDeletePost(ProductDTO productDTO) {
		int result = dao.productDelete(productDTO);
			if(result==1) {
				System.out.println("삭제되었습니다.");
			} else {
				System.out.println("삭제실패");
				System.out.println("result? "+result);
			}
		return "redirect:admin_product_lists.do";
	}
}







