package com.winevillage.winevillage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/common.do")
	public String header() {
		return "common/common";
	}
	
	@GetMapping("/order_write.do")
	public String pay() {
		return "pay/order_write";
	}
	
}
