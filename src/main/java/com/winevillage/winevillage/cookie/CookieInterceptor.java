package com.winevillage.winevillage.cookie;

import org.springframework.web.servlet.HandlerInterceptor;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieInterceptor implements HandlerInterceptor {

    private static final String COOKIE_NAME = "WineVillageCookie";

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // 루트 경로에 대한 요청은 바로 통과
        if (isRootPath(request)) {
            return true;
        }
        
        // 'WineVillageCookie' 쿠키가 있는지 확인
        if (!hasRequiredCookie(request)) {
            // 필요한 쿠키가 없다면 루트 경로로 리다이렉트
            redirectToRoot(response, request);
            return false;
        }

        return true;
    }
    
    private boolean isRootPath(HttpServletRequest request) {
        return request.getRequestURI().equals(request.getContextPath() + "/");
    }

    private boolean hasRequiredCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies == null) {
            return false;
        }
        for (Cookie cookie : cookies) {
            if (COOKIE_NAME.equals(cookie.getName())) {
                return true;
            }
        }
        return false;
    }

    private void redirectToRoot(HttpServletResponse response, HttpServletRequest request) throws Exception {
        response.sendRedirect(request.getContextPath() + "/");
    }
}
