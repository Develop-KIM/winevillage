package com.winevillage.winevillage.notice;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import utils.PagingUtil;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService dao;
	
	@GetMapping("/notice_list.do")
	public String noticeLists(Model model, HttpServletRequest req, 
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
		
		ArrayList<NoticeDTO> lists = dao.listPage(parameterDTO);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/notice_list.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "cs/notice_list";
	}
	
	@GetMapping("/notice_view.do")
	public String noticeView(Model model, NoticeDTO noticeDTO,
			@RequestParam("no") String no) {
		noticeDTO.setNotice_no(Integer.parseInt(no));
		noticeDTO = dao.noticeView(noticeDTO);
		/* noticeDTO.setNotice_content(noticeDTO.getNotice_content()
				  .replace("\r\n", "<br/>")); */
		String noticeContent = noticeDTO.getNotice_content();
	    noticeContent = "<li style='box-sizing: border-box; color: rgb(76, 76, 76); "
	    		+ "line-height: 22px; list-style: none; margin-bottom: 6px; padding-left: 8px;"
	    		+ " position: relative;'>" + noticeContent + "</li>";
	    
	    noticeDTO.setNotice_content(noticeContent);
		
		model.addAttribute("noticeDTO", noticeDTO);
		model.addAttribute("no", no);
		
		return "cs/notice_view";
	}
	
	@GetMapping("/admin_customer_notice_lists.do")
	public String noticeAdminLists(Model model, HttpServletRequest req, 
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
		
		ArrayList<NoticeDTO> lists = dao.listPage(parameterDTO);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_customer_notice_lists.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "admin/admin_customer/admin_customer_notice_lists";
	}
	
//	@PostMapping("/admin_customer_notice_lists.do")
//	public String handleNoticeLists() {
//		return "admin/admin_customer/admin_customer_notice_lists";
//	}
	
	@GetMapping("/admin_customer_notice_write.do")
	public String noticeWriteGet(Model model) {
		return "admin/admin_customer/admin_customer_notice_write";
	}
	
	@PostMapping("/admin_customer_notice_write.do")
	public String noticeWritePost(NoticeDTO noticeDTO) {
		try {
			int result = dao.noticeWrite(noticeDTO);
			if(result==1) System.out.println("입력완료");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("공지사항 등록에 실패하였습니다.");
		}
		return "redirect:admin_customer_notice_lists.do";
	}
	
	@GetMapping("/admin_customer_notice_edit.do")
	public String noticeEditGet(Model model, NoticeDTO noticeDTO) {
		noticeDTO = dao.noticeView(noticeDTO);
		noticeDTO.setNotice_content(noticeDTO.getNotice_content()
				  .replace("\r\n", "<br/>"));
		model.addAttribute("noticeDTO", noticeDTO);
		return "admin/admin_customer/admin_customer_notice_edit";
	}
	
	@PostMapping("/admin_customer_notice_edit.do")
	public String noticeEditPost(NoticeDTO noticeDTO) {
		int result = dao.noticeEdit(noticeDTO);
		System.out.println("글수정결과:" + result);
		return "redirect:admin_customer_notice_lists.do";
	}
	
	@PostMapping("/admin_customer_notice_delete.do")
	public String noticeDeletePost(NoticeDTO noticeDTO) {
		int result = dao.noticeDelete(noticeDTO);
		if(result==1) {
			System.out.println("삭제되었습니다.");
		} else {
			System.out.println("삭제실패");
			System.out.println("result? "+result);
		}
		
		return "redirect:admin_customer_notice_lists.do";
	}
	
	@PostMapping("/admin_customer_notice_delete2.do")
	public String noticeDelete2Post(@RequestParam("deleteItem") String deleteItem,
			NoticeDTO noticeDTO) {
		
		List<String> items = Arrays.asList(deleteItem.split(","));

		for(String item : items) {
			NoticeDTO noticeToDelete = new NoticeDTO();
	        noticeToDelete.setNotice_no(Integer.parseInt(item));
			int result = dao.noticeDelete(noticeToDelete);
			if(result==1) {
				System.out.println("삭제되었습니다.");
			} else {
				System.out.println("삭제실패");
				System.out.println("result? "+result);
			}
		}
		
		return "redirect:admin_customer_notice_lists.do";
	}
}







