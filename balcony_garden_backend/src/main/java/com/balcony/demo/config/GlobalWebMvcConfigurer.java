package com.balcony.demo.config;

import com.balcony.demo.jwt.JwtAuthenticationFilter;
import com.balcony.demo.jwt.JwtUtil;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;



@Configuration
public class GlobalWebMvcConfigurer<HttpSecurity> implements WebMvcConfigurer {

    /**
     * 跨域
     * allowedOrigin  改为 allowedOriginPattern
     * 修改allowedOrigins为allowedOriginPatterns
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**").
                allowedOriginPatterns("*").
                allowedMethods("GET", "HEAD", "POST", "PUT", "DELETE", "OPTIONS")
                .allowCredentials(true).maxAge(3600).
                allowedHeaders("*");
    }



    @Bean
    public CorsFilter corsFilter() {
        CorsConfiguration config = new CorsConfiguration();

        //允许跨越发送cookie
        config.setAllowCredentials(true);

        //允许所有域名进行跨域调用
        //config.addAllowedOrigin("*");
        config.addAllowedOriginPattern("*");

        //放行全部原始头信息
        config.addAllowedHeader("*");
        //允许所有请求方法跨域调用
        config.addAllowedMethod("*");
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }
}

