package com.winevillage.winevillage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.winevillage.winevillage.jdbc.IPayService;
import com.winevillage.winevillage.jdbc.MemberDTO;

@Controller
public class MainController {
	
	@Autowired
	private IPayService dao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	@GetMapping("/header.do")
	public String header() {
		return "common/header";
	}
//	@GetMapping("/order_write.do")
//	public String pay() {
//		return "pay/order_write";
//	}
	@GetMapping("/order_write.do")
	public String payForm(Model model) {
        // 로그인한 회원의 정보를 가져옴 (예시)
        MemberDTO memberDTO = dao.getMemberInfo(1); // 회원 번호 1을 예시로 사용

        // 회원 정보를 모델에 추가
        model.addAttribute("member", memberDTO);

        return "pay/order_write";
	}
}
