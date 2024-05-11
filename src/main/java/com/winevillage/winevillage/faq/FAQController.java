package com.winevillage.winevillage.faq;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.notice.NoticeDTO;
import com.winevillage.winevillage.product.ProductDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import utils.PagingUtil;

@Controller
public class FAQController {
	
	@Autowired
	FAQService dao;

	@GetMapping("/faq_list.do")
	public String faqLists(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO, FAQDTO faqDTO) {
		
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
		
		ArrayList<FAQDTO> lists = dao.listPage(parameterDTO);
		
		for (FAQDTO faq : lists) {
			String span_start = "<span style='font-family: 나눔고딕, NanumGothic, sans-serif;'>";
			String span_end = "</span>";
		    String faqContent = faq.getFaq_content();
		    faqContent = span_start + faqContent + span_end;
		    faqContent = faqContent.replaceAll("\r\n", "</span><br />"
		    		+ "<span style='font-family: 나눔고딕, NanumGothic, sans-serif;'>");
		    faq.setFaq_content(faqContent);
		}
		
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/faq_list.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "cs/faq_list";
	}
	
	@GetMapping("/admin_customer_faq_lists.do")
	public String faqAdminLists(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO, FAQDTO faqDTO) {
		
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
		
		ArrayList<FAQDTO> lists = dao.listPage(parameterDTO);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_customer_faq_lists.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "admin/admin_customer/admin_customer_faq_lists";
	}
	
	@GetMapping("/admin_customer_faq_category.do")
	public String faqAdminCategoryGet(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO, FAQDTO faqDTO) {
		
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
		model.addAttribute("categoryCount", dao.categoryCount(parameterDTO));
		
		ArrayList<FAQDTO> lists = dao.faqCategory(parameterDTO);
		Collections.reverse(lists);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_customer_faq_category.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "admin/admin_customer/admin_customer_faq_category";
	}
	
	@PostMapping("/admin_customer_faq_category.do")
	public String faqAdminCategoryPost(FAQDTO faqDTO, Model model) {
		try {
			int result = dao.faqCategoryWrite(faqDTO);
			if(result==1) System.out.println("입력완료");;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("상품 등록 실패");
		}
		return "redirect:admin_customer_faq_category.do";
	}
	
	@GetMapping("/admin_customer_faq_category_edit.do")
	public String faqCategoryEditGet(@RequestParam("new_faq_classified") String new_faq_classified,
			Model model, FAQDTO faqDTO) {
		faqDTO.setNew_faq_classified(new_faq_classified);
		faqDTO = dao.faqView(faqDTO);
		model.addAttribute("faqDTO", faqDTO);
		return "admin/admin_customer/admin_customer_faq_category_edit";
	}
	
	@PostMapping("/admin_customer_faq_category_edit.do")
	public String faqCategoryEditPost(@ModelAttribute("faqDTO") FAQDTO faqDTO, Model model) {
		System.out.println(faqDTO.getNew_faq_classified());
		try {
			int result = dao.categoryEdit(faqDTO, faqDTO.getNew_faq_classified());
			System.out.println("수정결과:" + result);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("수정 실패");
		}

		return "redirect:admin_customer_faq_category.do";
	}
	
	@GetMapping("/admin_customer_faq_write.do")
	public String faqWriteGet(Model model, ParameterDTO parameterDTO) {
		List<String> category = dao.faqCategory(parameterDTO).stream().map
				(FAQDTO::getFaq_classified).collect(Collectors.toList());
		model.addAttribute("category", category);
		return "admin/admin_customer/admin_customer_faq_write";
	}
	
	@PostMapping("/admin_customer_faq_write.do")
	public String faqWritePost(FAQDTO faqDTO, Model model) {
		try {
			int result = dao.faqWrite(faqDTO);
			if(result==1) System.out.println("입력완료");;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("상품 등록 실패");
		}
		return "redirect:admin_customer_faq_lists.do";
	}
	
	@GetMapping("/admin_customer_faq_edit.do")
	public String faqEditGet(Model model, FAQDTO faqDTO) {
		faqDTO = dao.faqView(faqDTO);
		faqDTO.setFaq_content(faqDTO.getFaq_content()
				  .replace("\r\n", "<br/>"));
		model.addAttribute("faqDTO", faqDTO);
		return "admin/admin_customer/admin_customer_faq_edit";
	}
	
	@PostMapping("/admin_customer_faq_edit.do")
	public String faqEditPost(FAQDTO faqDTO, Model model) {
		try {
			int result = dao.faqEdit(faqDTO);
			System.out.println("글수정결과:" + result);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("상품 수정 실패");
		}

		return "redirect:admin_customer_faq_lists.do";
	}
	
	@PostMapping("/admin_customer_faq_delete.do")
	public String faqDeletePost(FAQDTO faqDTO) {
		int result = dao.faqDelete(faqDTO);
		if(result==1) {
			System.out.println("삭제되었습니다.");
		} else {
			System.out.println("삭제실패");
			System.out.println("result? "+result);
		}
		return "redirect:admin_customer_faq_lists.do";
	}
	
	@PostMapping("/admin_customer_faq_delete2.do")
	public String faqDelete2Post(@RequestParam("deleteItem") String deleteItem,
			FAQDTO faqDTO) {
		
		List<String> items = Arrays.asList(deleteItem.split(","));

		for(String item : items) {
			FAQDTO faqToDelete = new FAQDTO();
	        faqToDelete.setFaq_no(Integer.parseInt(item));
			int result = dao.faqDelete(faqToDelete);
			if(result==1) {
				System.out.println("삭제되었습니다.");
			} else {
				System.out.println("삭제실패");
				System.out.println("result? "+result);
			}
		}
		
		return "redirect:admin_customer_faq_lists.do";
	}
}







