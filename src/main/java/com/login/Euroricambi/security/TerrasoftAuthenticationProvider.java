package com.login.Euroricambi.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

    private static final Logger LOGGER = LoggerFactory.getLogger(TerrasoftAuthenticationProvider.class);


    private final String ADMIN_LOGIN;
    private final String ADMIN_PASSWORD;

    private final TerrasoftService terrasoft;

    @Autowired
    public TerrasoftAuthenticationProvider(TerrasoftService terrasoft) {
        this.terrasoft = terrasoft;
        this.ADMIN_LOGIN = "admin";
        this.ADMIN_PASSWORD = "**";
    }

    @Override
    public Authentication authenticate(Authentication auth) throws AuthenticationException {
        String login = auth.getName();
        String password = ((String) auth.getCredentials());

        if (login == null || password == null || login.isEmpty() || password.isEmpty()) {
            throw new BadCredentialsException("External system authentication failed");
        }


        if (isAdmin(login, password)) {
            return new TerrasoftAuthentication(EuroricambiUser.newAdminInstance(), password, Collections.singletonList(new SimpleGrantedAuthority("ROLE_ADMIN")));
        }

        LoginCheckResponse response = terrasoft.loginCheck(login, password);
        Boolean loginCheck = response.isLoginCheckResult();

        LOGGER.debug("LoginCheck {}", loginCheck);

        if (loginCheck == null || !loginCheck) {
            String errorMessage = response.getErrorMessage().getValue();

            LOGGER.debug("ERROR {}", errorMessage);

            throw new AuthenticationServiceException(errorMessage);
        } else {
            ContactInfo contactInfo = response.getCInfo().getValue();

            if (contactInfo == null) {
                throw new AuthenticationServiceException("Terrasoft contactInfo not found");
            }

            return new TerrasoftAuthentication(EuroricambiUser.newUserInstance(contactInfo), password, Collections.singletonList(new SimpleGrantedAuthority("ROLE_USER")));
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
