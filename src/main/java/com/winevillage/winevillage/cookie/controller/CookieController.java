package com.winevillage.winevillage.cookie.controller;

import com.winevillage.winevillage.cookie.constants.CookieConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

import java.util.concurrent.TimeUnit;

import static com.winevillage.winevillage.cookie.constants.CookieConstants.COOKIE_NAME;
import static com.winevillage.winevillage.cookie.constants.CookieConstants.COOKIE_VALUE;

@Controller
public class CookieController {

	@GetMapping("/setCookie")
	public String setCookie(HttpServletResponse response) {
		addCookie(response);
		return "redirect:/main.do";
	}

	private void addCookie(HttpServletResponse response) {
		Cookie cookie = new Cookie(COOKIE_NAME, COOKIE_VALUE);
		cookie.setMaxAge((int) TimeUnit.HOURS.toSeconds(CookieConstants.COOKIE_MAX_AGE_HOURS));
		response.addCookie(cookie);
	}
}