package com.winevillage.winevillage.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
public class SecurityConfig{

	@Autowired
	private MyAuthFailureHandler myAuthFailureHandler;

	@Autowired
	private LogoutHandler customLogoutHandler;

	@Autowired
	private LogoutSuccessHandler customLogoutSuccessHandler;

	@Autowired
	private DataSource dataSource;

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
				.successHandler(new CustomLoginSuccessHandler()) // 로그인 성공 시 이전 요청에 따라 이동
				.usernameParameter("loginMemberId")
				.passwordParameter("loginPassword")
				.permitAll());
		http.logout((logout) -> logout
				.logoutSuccessUrl("/")
				.addLogoutHandler(customLogoutHandler)
				.invalidateHttpSession(true)
				.logoutSuccessHandler(customLogoutSuccessHandler)
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
