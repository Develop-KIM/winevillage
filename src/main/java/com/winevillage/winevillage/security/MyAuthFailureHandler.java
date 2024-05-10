package com.winevillage.winevillage.security;

import java.io.IOException;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 자동으로 생성되는 빈 임을 명시하는 어노테이션 부착
@Configuration
public class MyAuthFailureHandler implements AuthenticationFailureHandler {
	/*
	 * 핸들러 제작을 위해 AuthenticationFailureHandler 인터페이스를 구현하여 클래스를 정의한다.
	 */
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		/*
		 * instanceOf 연산자를 이용해서 전달된 예외객체의 종류를 파악한 후 적절한 에러메시지를 지정한다.
		 * 단, 인증에 관련된 메세지를 너무 자세히 기술하지 않는 것이 좋다.
		 */
		String errorMsg = "";
		
		if (exception instanceof BadCredentialsException) {
			loginFailureCnt(request.getParameter("loginMemberId"));
			errorMsg = "아이디나 비밀번호가 맞지 않습니다.";
		} else if (exception instanceof InternalAuthenticationServiceException) {
			loginFailureCnt(request.getParameter("loginMemberId"));
			errorMsg = "아이디나 비밀번호가 맞지 않습니다.";
		} 
		// request영역에 에러메세지를 저장한다.
		request.setAttribute("errorMsg", errorMsg);
		System.out.println("error: " + errorMsg);
	}
	
	public void loginFailureCnt(String memberId) {
		System.out.println("요청 아이디: " + memberId);
	}
	
}
