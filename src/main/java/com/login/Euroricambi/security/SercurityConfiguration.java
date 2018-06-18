package com.login.Euroricambi.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
public class SercurityConfiguration extends WebSecurityConfigurerAdapter {


    private final TerrasoftAuthenticationProvider terrasoftAuthenticationProvider;

    @Autowired
    public SercurityConfiguration(TerrasoftAuthenticationProvider terrasoftAuthenticationProvider) {
        this.terrasoftAuthenticationProvider = terrasoftAuthenticationProvider;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/**").authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/", true)
                .failureForwardUrl("/login-failure")
                .permitAll()
                .and()
                .logout()
                .permitAll();
    }

    /**
     * configure (WebSecurity) используется для параметров конфигурации,
     * которые влияют на глобальную безопасность (игнорируют ресурсы,устанавливают режим отладки,
     * отклоняют запросы, реализуя пользовательское определение брандмауэра).
     * Например, следующий метод приведет к игнорированию любого запроса, начинающегося с / resources /,
     * для целей аутентификации.
     *
     * @param web
     * @throws Exception
     */
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/css/**", "/assets/**", "/img/**");
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(terrasoftAuthenticationProvider);
    }
}


//@Configuration
//@EnableWebSecurity
//public class SercurityConfiguration extends WebSecurityConfigurerAdapter {
////    @Autowired
////    public void configureAuthentication(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
////        authenticationManagerBuilder
////                .userDetailsService(this.userDetailsService)
////                .passwordEncoder(passwordEncoder());
////    }
//    private CsrfTokenRepository csrfTokenRepository()
//    {
//        HttpSessionCsrfTokenRepository repository = new HttpSessionCsrfTokenRepository();
//        repository.setSessionAttributeName("_csrf");
//        return repository;
//    }
//
//    @Bean
//    public UserDetailsService UserDetailsService() {
//        return super.userDetailsService();
//    }
//
//    @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http.csrf()
//                .csrfTokenRepository(csrfTokenRepository());
//        http
//
//                .formLogin()
//                .loginPage("/login")
//                .failureUrl("/login?fail=true")
//                .and()
//                .logout()
//                .logoutUrl("/logout")
//                .logoutSuccessUrl("/login")
//                .deleteCookies("JSESSIONID", "Secret_cookei")
//                .and()
//                .authorizeRequests()
//
////                .antMatchers("/newsEditing").hasRole("ADMIN")
////                .antMatchers("/addNewsTechnical").hasRole("ADMIN")
////                .antMatchers("/updateNewsTechnical").hasRole("ADMIN")
////                .antMatchers("/addNews").hasRole("ADMIN")
////                .antMatchers("/updateNews").hasRole("ADMIN")
//                .anyRequest().permitAll();
//    }
//
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        auth
//                .inMemoryAuthentication()
//
//                .withUser("admin").password("admin").roles("ADMIN");
//    }
//}
