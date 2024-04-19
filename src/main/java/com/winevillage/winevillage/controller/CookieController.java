package com.winevillage.winevillage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class CookieController {


	@GetMapping("/setCookie")
	public String setCookie(HttpServletResponse response) {
		Cookie cookie = new Cookie("exampleCookie", "value");
		cookie.setMaxAge(3600); // 1시간 동안 유효
		response.addCookie(cookie);
		return "redirect:/mainpage.do";
	}
}