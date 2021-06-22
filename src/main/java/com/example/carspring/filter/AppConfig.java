//package com.example.carspring.filter;
//
//import org.springframework.boot.web.servlet.FilterRegistrationBean;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//@Configuration
//public class AppConfig {
//
//    @Bean
//    public FilterRegistrationBean<LoginFilter> filterRegistrationBean() {
//        FilterRegistrationBean<LoginFilter> registrationBean = new FilterRegistrationBean();
//        LoginFilter loginFilter = new LoginFilter();
//
//        registrationBean.setFilter(loginFilter);
//        registrationBean.addUrlPatterns("/auth/*");
//        registrationBean.setOrder(2); // Set precedence
//        return registrationBean;
//    }
//}