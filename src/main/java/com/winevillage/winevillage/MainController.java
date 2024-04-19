package com.winevillage.winevillage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class MainController {

	@RequestMapping("/")
	public String landing() {
		return "landing";
	}

	@GetMapping("/header.do")
	public String header() {
		return "common/header";
	}

	@GetMapping("/order_write.do")
	public String pay() {
		return "pay/order_write";
	}

	@GetMapping("/mainpage.do")
	public String mainpage() {
		return "mainpage/mainpage";
	}


}
