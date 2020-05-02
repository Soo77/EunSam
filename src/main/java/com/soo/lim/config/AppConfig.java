package com.soo.lim.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ComponentScan(basePackages = "com.soo.lim", excludeFilters = {
    @Filter(type = FilterType.REGEX, pattern = "com.soo.lim.web.*")})

@EnableWebMvc
public class AppConfig {

}
