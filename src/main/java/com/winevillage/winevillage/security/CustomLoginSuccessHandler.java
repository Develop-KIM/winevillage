package com.winevillage.winevillage.security;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class CustomLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	@Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        // 인증된 사용자 정보를 가져옵니다.
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        
        // 요청된 URL이 join로 시작하는지 여부를 확인합니다.
        String requestURI = request.getRequestURI();
        if (requestURI.matches(".*/join.*\\.do")) {
            // 회원가입 페이지에서 로그인한 경우 메인 페이지로 이동합니다.
            response.sendRedirect(request.getContextPath() + "/main.do");
        } else {
            // 다른 페이지에서 로그인한 경우 요청된 페이지로 이동합니다.
            super.onAuthenticationSuccess(request, response, authentication);
        }
    }
}