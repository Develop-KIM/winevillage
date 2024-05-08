package com.winevillage.winevillage.cookie;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CookieConfig implements WebMvcConfigurer {
    
    private static final String[] STATIC_RESOURCES = {
        "/**/*.css",
        "/**/*.png",
        "/**/*.svg",
        "/**/*.jpg",
        "/**/*.ttf",
        "/**/*.eot",
        "/**/*.woff",
        "/**/*.otf",
        "/**/*.html",
    };

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CookieInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns("/setCookie")
                .excludePathPatterns(STATIC_RESOURCES);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("classpath:/static/")
                .setCachePeriod(0);
    }
}
