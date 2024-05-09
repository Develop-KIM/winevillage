package com.winevillage.winevillage.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
    
}