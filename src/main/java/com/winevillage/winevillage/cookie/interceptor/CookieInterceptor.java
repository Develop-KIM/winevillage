package com.winevillage.winevillage.cookie.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.Arrays;
import java.util.Objects;

import static com.winevillage.winevillage.cookie.constants.CookieConstants.COOKIE_NAME;
import static com.winevillage.winevillage.cookie.constants.CookieConstants.ROOT_PATH;


public class CookieInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (isRootPath(request) || hasRequiredCookie(request)) {
            return true;
        }
        redirectToRoot(response);
        return false;
    }

    private boolean isRootPath(HttpServletRequest request) {
        return ROOT_PATH.equals(request.getRequestURI());
    }

    private boolean hasRequiredCookie(HttpServletRequest request) {
        return Arrays.stream(request.getCookies())
                .filter(Objects::nonNull)
                .anyMatch(cookie -> COOKIE_NAME.equals(cookie.getName()));
    }

    private void redirectToRoot(HttpServletResponse response) throws Exception {
        response.sendRedirect(ROOT_PATH);
    }
}
