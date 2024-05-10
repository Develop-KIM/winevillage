package com.winevillage.winevillage.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Autowired
    public MyAuthFailureHandler myAuthFailureHandler;

    @Autowired
    private LogoutHandler customLogoutHandler;

    @Autowired
    private LogoutSuccessHandler customLogoutSuccessHandler;
    
    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.csrf((csrf) -> csrf.disable())
            .cors((cors) -> cors.disable())
            .authorizeHttpRequests((request) -> request
                    .dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
                    .requestMatchers("/", "/setCookie", "/**", "/**.do").permitAll()
                    .requestMatchers("/css/**", "/js/**", "/images/**").permitAll()
                    .requestMatchers("/login").permitAll()
                    .requestMatchers("/checkMemberIdExist").permitAll()
                    .requestMatchers("/join_form.do", "/join_success.do").permitAll()
//                    .requestMatchers("/member/**").hasRole("USER")
//                    .requestMatchers("/admin/**").hasRole("ADMIN")
                    .anyRequest().authenticated()
            );
		http.formLogin((formLogin) -> formLogin
				.loginProcessingUrl("/login")
				.failureHandler(myAuthFailureHandler)
				.successHandler(new SavedRequestAwareAuthenticationSuccessHandler()) // 로그인 성공 시 이전 요청에 따라 이동
				.usernameParameter("loginMemberId")
				.passwordParameter("loginPassword")
				.permitAll());
		
		http.logout((logout) -> logout
				.logoutSuccessUrl("/")
				.addLogoutHandler(customLogoutHandler)
                .logoutSuccessHandler(customLogoutSuccessHandler));
		/*
		 * 권한이 부족한 경우 이동할 위치 지정
		 */
		http.exceptionHandling((expHanding) -> expHanding
				.accessDeniedPage("/main.do"));

        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
}
