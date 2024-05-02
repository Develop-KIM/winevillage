package com.winevillage.winevillage.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import jakarta.servlet.DispatcherType;

/*
 * 스프링 시큐리티 사용을 위한 설정 클래스
 * 웹 컨테이너가 시작될 때 빈이 생성되어야 하므로 기본패키지 하위에 정의한다.
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Autowired
	public MyAuthFailureHandler myAuthFailureHandler;

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) 
			throws Exception {
		http.csrf((csrf) -> csrf.disable())
			.authorizeHttpRequests((request) -> request
					.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
					.requestMatchers("/", "/setCookie", "/**.do").permitAll()
					.requestMatchers("/css/**", "/js/**", "/images/**").permitAll()
					.anyRequest().authenticated()
			);
		http.formLogin((formLogin) -> formLogin
				.loginPage("/join/myLogin.do")
				.loginProcessingUrl("/myLoginAction.do")
//				.failureUrl("/myError.do")
				.failureHandler(myAuthFailureHandler)
				.usernameParameter("my_id")
				.passwordParameter("my_pass")
				.permitAll());
			
		return http.build();
	}
	
	/*
	 * 로그인 후 획득할 수 있는 권한에 대한 설정을 한다.
	 * USER권한과 ADMIN권한을 획득하기 위한 아이디/비번을 메모리에 저장한다.
	 * DB에 저장하기 위해서는 별도의 커스터마이징이 필요하다.
	 */
	@Bean
	UserDetailsService users() {
		UserDetails user = User.builder()
				.username("user")
				.password(passwordEncoder().encode("1234"))
				.roles("USER")
				.build();
		UserDetails admin = User.builder()
				.username("admin")
				.password(passwordEncoder().encode("1234"))
				.roles("USER", "ADMIN")
				.build();
		
		return new InMemoryUserDetailsManager(user, admin);
	}
	
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
}
