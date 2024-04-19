package com.winevillage.winevillage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class landingController {

    @GetMapping("/landingPage")
    public String landingPage(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("Cookie")) {
                    return "redirect:/mainPage.do";
                }
            }
        }
        return "landingPage";
    }
}