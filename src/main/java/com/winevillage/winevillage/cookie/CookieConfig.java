package com.winevillage.winevillage.cookie;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CookieConfig implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(cookieInterceptor())
				.addPathPatterns("/**")
				.excludePathPatterns("/setCookie");
	}
	
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
       WebMvcConfigurer.super.addResourceHandlers(registry);
       registry.addResourceHandler("resources/css/**").addResourceLocations("classpath:/static/")
       .setCachePeriod(60 * 60 * 24 * 365);
    }

	@Bean
	public CookieInterceptor cookieInterceptor() {
		return new CookieInterceptor();
	}
}
