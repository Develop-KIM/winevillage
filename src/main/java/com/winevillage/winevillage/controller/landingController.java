package com.winevillage.winevillage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class landingController {

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

		if (!hasCookie) {
			return "landing";
		} else {
			return "redirect:/mainpage.do";
		}
	}
}