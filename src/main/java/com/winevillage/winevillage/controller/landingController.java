package com.winevillage.winevillage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class landingController {

	// 랜딩페이지
	@RequestMapping("/")
	public String landingPage(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		boolean hasCookie = false;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("WineVillageCookie")) {
					hasCookie = true;
					break;
				}
			}
		}

		// 쿠키가 없는 경우에만 랜딩페이지로 이동
		if (!hasCookie) {
			return "landing";
		} else {
			// 쿠키가 있는 경우에는 메인페이지로 리다이렉트
			return "redirect:/mainPage.do";
		}
	}
}