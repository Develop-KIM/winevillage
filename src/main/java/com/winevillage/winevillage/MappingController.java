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


}
