package com.winevillage.winevillage.cookie.config;

import com.winevillage.winevillage.cookie.interceptor.CookieInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import static com.winevillage.winevillage.cookie.constants.CookieConstants.EXCLUDED_PATHS;
import static com.winevillage.winevillage.cookie.constants.CookieConstants.STATIC_RESOURCES;

@Configuration
public class CookieConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CookieInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns(EXCLUDED_PATHS)
                .excludePathPatterns(STATIC_RESOURCES);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("classpath:/static/")
                .setCachePeriod(0);
    }
}