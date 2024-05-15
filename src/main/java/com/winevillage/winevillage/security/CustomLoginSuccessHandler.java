package com.winevillage.winevillage.security;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.winevillage.winevillage.cart.CartListService;
import com.winevillage.winevillage.member.MemberService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Component
public class CustomLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

      private MemberService memberService;
	   private CartListService cartListService;

	    public CustomLoginSuccessHandler(CartListService cartListService, MemberService memberService) {
	        this.cartListService = cartListService;
	        this.memberService = memberService; // 멤버 변수 초기화
	    }
	public String findByName(String user_id) {
	    	return memberService.findByName(user_id);
	}
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
	    HttpSession session = request.getSession();

	    // 사용자 ID 세션에 저장
	    String user_id = authentication.getName(); // 사용자 ID 가져오기
	    session.setAttribute("userId", user_id); // 세션에 사용자 ID 저장
	    System.out.println("user: " + user_id);
    	String name = memberService.findByName(user_id);
    	session.setAttribute("name", name);
    	System.out.println(name + "asds");
    	
		 // COOKIE_ID 확인 후 주문 정보 업데이트
	        Cookie[] cookies = request.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if (cookie.getName().equals("COOKIE_ID")) {
	                    // Orders 테이블에서 cookie_id를 찾아 memberNo를 업데이트하고 cookie_id를 삭제
	                	String memberNo = cartListService.getMemberNo(user_id);
	                    cartListService.updateMemberCart(cookie.getValue(), memberNo);
//	                    // 쿠키 삭제
	                    cookie.setMaxAge(0);
	                    response.addCookie(cookie);
	                    break;
	                }
	            }
	        }
	    // 로그인한 페이지 확인
	    String referrer = request.getHeader("Referer");
	    System.out.println(referrer);
	    if (referrer != null && (referrer.contains("join_form.do") || referrer.contains("join_success.do"))) {
	        // join_form 또는 join_success에서 로그인한 경우, main.do로 리다이렉트
	    	System.out.println("111111-1");
	        response.sendRedirect("main.do");
	        System.out.println("111111-2");
	        return; // 리다이렉트 후 메소드 실행 종료
	    } else {
	    	System.out.println("22222222");
	        // 그 외의 경우, 기존 로직 실행 (요청된 페이지 또는 기본 URL로 리다이렉트)
	        super.onAuthenticationSuccess(request, response, authentication);
	    }
	}

}