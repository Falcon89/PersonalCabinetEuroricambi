package com.login.Euroricambi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;


//@SpringBootApplication
@SpringBootApplication(scanBasePackages = {"com.login.Euroricambi.controller", "com.login.Euroricambi.dao", "com.login.Euroricambi.entity",
        "com.login.Euroricambi.service", "com.login.Euroricambi.serviceImpl","com.login.Euroricambi.Utils"})
//@ComponentScan({"com.login.Euroricambi.controller"})
//@EntityScan("com.login.Euroricambi.entity")
//@EnableJpaRepositories("com.login.Euroricambi.dao")
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
public class LoginEuroricambiApplication  extends SpringBootServletInitializer {
	// Override the configure method from the SpringBootServletInitializer class
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(LoginEuroricambiApplication.class);
	}
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertyPlaceholderConfigurer() {

		return new PropertySourcesPlaceholderConfigurer();
	}

		public static void main(String[] args) {
		SpringApplication.run(LoginEuroricambiApplication.class, args);
	}
}
