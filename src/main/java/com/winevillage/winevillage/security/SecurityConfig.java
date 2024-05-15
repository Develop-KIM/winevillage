package com.winevillage.winevillage.security;

import java.io.IOException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.winevillage.winevillage.cart.CartListService;
import com.winevillage.winevillage.member.MemberService;

import jakarta.servlet.DispatcherType;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Configuration
@EnableWebSecurity
public class SecurityConfig{

	@Autowired
	private MyAuthFailureHandler myAuthFailureHandler;

	@Autowired
	private DataSource dataSource;

	@Autowired
	private CartListService cartListService;

	@Autowired
	private MemberService memberService;
	
	@Autowired
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select memberId, password, enabled " + " from member where memberId = ?")
				.authoritiesByUsernameQuery("select memberId, role " + " from member where memberId = ?")
				.passwordEncoder(new BCryptPasswordEncoder());
	}

	@Bean
	SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf((csrf) -> csrf.disable()).cors((cors) -> cors.disable())
				.authorizeHttpRequests((request) -> request.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
						.requestMatchers("/", "/setCookie", "/**", "/**.do").permitAll()
						.requestMatchers("/css/**", "/js/**", "/images/**").permitAll()
						.requestMatchers("/login", "/join_form.do", "/join_success.do").permitAll()
						.requestMatchers("/member/**").hasRole("USER")
						.anyRequest().authenticated());
		http.formLogin((formLogin) -> formLogin
				.loginProcessingUrl("/checkLoginStatus")
				.failureHandler(myAuthFailureHandler)
				.successHandler(new CustomLoginSuccessHandler(cartListService, memberService))
				.usernameParameter("loginMemberId")
				.passwordParameter("loginPassword")
				.permitAll());
		http.logout((logout) -> logout
				.logoutUrl("/logout")
				.invalidateHttpSession(true)
				.deleteCookies("JSESSIONID")
				.logoutSuccessHandler(new LogoutSuccessHandler() {
                    @Override
                    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                        // 로그아웃 성공 후, 현재 페이지로 리다이렉션하는 로직
                        String refererUrl = request.getHeader("Referer");
                        response.sendRedirect(refererUrl);
                    }
                })
				.permitAll());
		
		http.exceptionHandling((expHanding) -> expHanding
				.accessDeniedPage("/main.do"));

		return http.build();
	}
	
	@Bean
	PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}

}
