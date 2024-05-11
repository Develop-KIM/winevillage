package com.winevillage.winevillage.security;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CustomLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
	    HttpSession session = request.getSession();

	    // 사용자 ID 세션에 저장
	    String user_id = authentication.getName(); // 사용자 ID 가져오기
	    session.setAttribute("userId", user_id); // 세션에 사용자 ID 저장
	    System.out.println("user: " + user_id);

	    // 로그인한 페이지 확인
	    String referrer = request.getHeader("Referer");
	    System.out.println(referrer);
	    if (referrer != null && (referrer.contains("join_form.do") || referrer.contains("join_success.do"))) {
	        // join_form 또는 join_success에서 로그인한 경우, main.do로 리다이렉트
	        response.sendRedirect("main.do");
	        return; // 리다이렉트 후 메소드 실행 종료
	    } else {
	        // 그 외의 경우, 기존 로직 실행 (요청된 페이지 또는 기본 URL로 리다이렉트)
	        super.onAuthenticationSuccess(request, response, authentication);
	    }
	}

}