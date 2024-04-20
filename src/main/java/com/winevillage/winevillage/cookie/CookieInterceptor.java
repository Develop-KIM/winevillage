package com.winevillage.winevillage.cookie;

import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // 랜딩페이지인 경우에는 인터셉터를 거치지 않고 바로 요청을 진행
        if (request.getRequestURI().equals(request.getContextPath() + "/")) {
            return true;
        }
        
        // 쿠키 확인
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

        // 쿠키가 없으면 랜딩페이지로 리다이렉트
        if (!hasCookie) {
            response.sendRedirect(request.getContextPath() + "/");
            return false;
        }

        // 쿠키가 있거나 이미 리디렉션된 경우에는 계속 진행
        return true;
    }
}
