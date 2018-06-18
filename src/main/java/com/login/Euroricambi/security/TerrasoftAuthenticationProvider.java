package com.login.Euroricambi.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import com.login.Euroricambi.security.model.EuroricambiUser;
import com.login.Euroricambi.security.model.TerrasoftAuthentication;
import com.login.Euroricambi.service.TerrasoftService;
import com.login.Euroricambi.wsdl.ContactInfo;
import com.login.Euroricambi.wsdl.LoginCheckResponse;

import java.util.Collections;

@Component
public class TerrasoftAuthenticationProvider implements AuthenticationProvider {

    private final String ADMIN_LOGIN;
    private final String ADMIN_PASSWORD;

    private final TerrasoftService terrasoft;

    @Autowired
    public TerrasoftAuthenticationProvider(TerrasoftService terrasoft) {
        this.terrasoft = terrasoft;
        this.ADMIN_LOGIN = "admin";
        this.ADMIN_PASSWORD = "admin";
    }

    @Override
    public Authentication authenticate(Authentication auth) throws AuthenticationException {
        String login = auth.getName();
        String password = ((String) auth.getCredentials());

        if (login == null || password == null || login.isEmpty() || password.isEmpty()) {
            throw new BadCredentialsException("External system authentication failed");
        }


        if (isAdmin(login, password)) {
            return new TerrasoftAuthentication(EuroricambiUser.newAdminInstance(), password, Collections.singletonList(new SimpleGrantedAuthority("ADMIN")));
        }

        LoginCheckResponse response = terrasoft.loginCheck(login, password);
        Boolean loginCheck = response.isLoginCheckResult();

        if (loginCheck == null || !loginCheck) {
            String errorMessage = response.getErrorMessage().getValue();
            throw new AuthenticationServiceException(errorMessage);
        } else {
            ContactInfo contactInfo = response.getCInfo().getValue();

            if (contactInfo == null) {
                throw new AuthenticationServiceException("Terrasoft contactInfo not found");
            }

            return new TerrasoftAuthentication(EuroricambiUser.newUserInstance(contactInfo), password, Collections.singletonList(new SimpleGrantedAuthority("USER")));
        }
    }

    private boolean isAdmin(String login, String password) {
        return ADMIN_LOGIN.equals(login.toLowerCase()) && ADMIN_PASSWORD.equals(password.toLowerCase());
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return UsernamePasswordAuthenticationToken.class.equals(aClass);
    }
}
