package com.winevillage.winevillage.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.product.ProductDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction;
import utils.PagingUtil;



@Controller
public class AdminController {
	
	@Autowired
	AdminService dao;
	
	@GetMapping("/admin_setting_super.do")
	public String adminInsertGet() {
		return "admin/admin_setting/admin_setting_super";
	}

	@PostMapping("/admin_setting_super.do")
	public String adminInsertPost(AdminDTO adminDTO) {
		int result = dao.adminInsert(adminDTO);
		if(result==1) System.out.println("입력되었습니다.");
		return "redirect:admin_index.do";
	}
	
	@GetMapping("/admin_login.do")
	public String adminLoginGet() {
		return "admin/admin_common/admin_login";
	}
	
	@PostMapping("/admin_login.do")
	public String adminLoginPost(@RequestParam("admin_id") String admin_id, 
			@RequestParam("admin_pass") String admin_pass, HttpSession session) {
		AdminDTO admin = dao.getAdmin(admin_id);
		if(admin==null || !admin.getAdmin_pass().equals(admin_pass)) {
			return "redirect:admin_login.do";
		} else {
			session.setAttribute("admin", admin);
			return "redirect:admin_index.do";
		}
	}
	
	@GetMapping("/admin_logout.do")
	public String adminLogout(HttpSession session) {
		session.removeAttribute("admin");
		return "redirect:/admin_login.do";
	}
	
	@GetMapping("/admin_setting_super_lists.do")
	public String adminLists(Model model, HttpServletRequest req, 
			ParameterDTO parameterDTO) {
		
		int totalCount = dao.adminTotalCount(parameterDTO);
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
		
		ArrayList<AdminDTO> lists = dao.adminlistPage(parameterDTO);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_setting_super_lists.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		
		
		return "admin/admin_setting/admin_setting_super_lists";
	}
	
	@GetMapping("/admin_setting_super_edit.do")
	public String adminEditGet(Model model, AdminDTO adminDTO) {
		adminDTO = dao.adminView(adminDTO);
		model.addAttribute("adminDTO", adminDTO);
		
		return "admin/admin_setting/admin_setting_super_edit";
	}
	
	@PostMapping("/admin_setting_super_edit.do")
	public String adminEditPost(AdminDTO adminDTO, Model model) {
		int result = dao.adminEdit(adminDTO);
		System.out.println("관리자 수정 결과" + result);
		System.out.println(adminDTO);
		return "redirect:admin_setting_super_lists.do";
	}
	
	@PostMapping("/admin_setting_super_delete.do")
	public String adminDeletePost(AdminDTO adminDTO) {
		int result = dao.adminDelete(adminDTO);
			if(result==1) {
				System.out.println("삭제되었습니다.");
			} else {
				System.out.println("삭제실패");
				System.out.println("result? "+result + adminDTO);
			}
			return "redirect:admin_setting_super_lists.do";
	}
	
	
}






