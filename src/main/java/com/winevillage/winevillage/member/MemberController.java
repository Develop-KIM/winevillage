package com.winevillage.winevillage.member;

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
public class MemberController {

	@Autowired
	MemberService memberService;

    @GetMapping("/join_form.do")
    public String joinForm() {
        return "member/join/join_form";
    }

    @GetMapping("/join_success.do")
    public String joinSuccess() {
        return "member/join/join_success";
    }

    @PostMapping("/join_form.do")
    public String handleJoinSuccessPost() {
        System.out.println("회원 가입이 완료되었습니다. 환영합니다!");
        return "redirect:/join_success.do";
    }
    
    @GetMapping("/admin_member_lists.do")
	public String memberLists(Model model, HttpServletRequest req,
			ParameterDTO parameterDTO) {
		int totalCount = memberService.memberTotalCount(parameterDTO);
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

		ArrayList<MemberDTO> lists = memberService.memberlistPage(parameterDTO);
		model.addAttribute("lists", lists);

		String pagingImg = PagingUtil.pagingImg(totalCount, pageSize, blockPage, pageNum, 
				req.getContextPath()+"/admin_member_lists.do?");
		model.addAttribute("pagingImg", pagingImg);

		return "admin/admin_member/admin_member_lists";
	}
    
}