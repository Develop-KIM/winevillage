package com.winevillage.winevillage.cookie.controller;

import jakarta.servlet.http.Cookie;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

import java.util.Arrays;
import java.util.Objects;

import static com.winevillage.winevillage.cookie.constants.CookieConstants.COOKIE_NAME;

@Controller
public class IntroController {

	@GetMapping("/")
	public String intro(HttpServletRequest request) {
		if (hasRequiredCookie(request)) {
			return "redirect:/main.do";
		}
		return "intro";
	}

	private boolean hasRequiredCookie(HttpServletRequest request) {
		return hasCookie(request, COOKIE_NAME);
	}

	private boolean hasCookie(HttpServletRequest request, String cookieName) {
		Cookie[] cookies = request.getCookies();
		return cookies != null && Arrays.stream(cookies)
				.filter(Objects::nonNull)
				.map(Cookie::getName)
				.anyMatch(name -> name.equals(cookieName));
	}
}