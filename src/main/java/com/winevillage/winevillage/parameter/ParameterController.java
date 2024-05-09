package com.winevillage.winevillage.parameter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.admin.AdminDTO;
import com.winevillage.winevillage.member.MemberDTO;
import com.winevillage.winevillage.member.MemberService;
import com.winevillage.winevillage.product.ProductDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction;
import utils.PagingUtil;



@Controller
public class ParameterController {
	
	@Autowired
	MemberService dao;
	
	@GetMapping("/admin_member_lists.do")
	public String memberLists(Model model, HttpServletRequest req,
			ParameterDTO parameterDTO) {
		int totalCount = dao.memberTotalCount(parameterDTO);
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
		
		ArrayList<MemberDTO> lists = dao.memberlistPage(parameterDTO);
		model.addAttribute("lists", lists);
		
		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_member_lists.do?");
		model.addAttribute("pagingImg", pagingImg);
		
		return "admin/admin_member/admin_member_lists";
	}

	
}






