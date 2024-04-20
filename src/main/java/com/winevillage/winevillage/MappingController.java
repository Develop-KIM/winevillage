package com.winevillage.winevillage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class MappingController {

	// 랜딩페이지
    @RequestMapping("/")
 	public String landing() {
		return "landing";
	}
	
	@GetMapping("/common.do")
	public String header() {
		return "common/common";
	}

	@GetMapping("/order_write.do")
	public String pay() {
		return "pay/order_write";
	}

	// 메인페이지
	@GetMapping("/mainpage.do")
	public String mainpage() {
		return "mainpage/mainpage";
	}
	@GetMapping("/return_order_list.do")
	public String return_order_list() {
		return "mypage/return_order_list";
	}

	@GetMapping("/order_list.do")
	public String order_list() {
		return "mypage/order_list";
	}
	@GetMapping("/wish_list.do")
	public String wish_list() {
		return "mypage/wish_list";
	}
	@GetMapping("/cart_list.do")
	public String cart_list() {
		return "mypage/cart_list";
	}
	@GetMapping("/qna_list.do")
	public String qna_list() {
		return "mypage/qna_list";
	}
	@GetMapping("/qna_write.do")
	public String qna_write() {
		return "mypage/qna_write";
	}
	@GetMapping("/password_cert.do")
	public String password_cert() {
		return "mypage/password_cert";
	}
	@GetMapping("/change_password.do")
	public String change_password() {
		return "mypage/change_password";
	}
	@GetMapping("/withdrawal.do")
	public String withdrawal() {
		return "mypage/withdrawal";
	}

}
