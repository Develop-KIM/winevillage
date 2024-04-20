package com.winevillage.winevillage.cookie;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CookieConfig implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(cookieInterceptor())
				.addPathPatterns("/**")
				.excludePathPatterns("/setCookie");
	}

	@Bean
	public CookieInterceptor cookieInterceptor() {
		return new CookieInterceptor();
	}
}
