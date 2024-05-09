package com.winevillage.winevillage.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.winevillage.admin.AdminDTO;

import jakarta.servlet.http.HttpSession;

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
    
    @PostMapping("/admin_login.do")
	public String adminLoginPost(@RequestParam("login_user_id") String login_user_id, @RequestParam("login_passwd") String login_passwd, HttpSession session) {
		MemberDTO member =  memberService.getmemberId(login_user_id);
		if(member==null || !member.getPassword().equals(login_passwd)) {
			return "redirect:admin_login.do";
		} else {
			session.setAttribute("member", member);
			return "redirect:admin_index.do";
		}
	}
}