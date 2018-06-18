package com.login.Euroricambi.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ws.client.core.WebServiceMessageCallback;
import org.springframework.ws.client.core.support.WebServiceGatewaySupport;
import org.springframework.ws.soap.client.core.SoapActionCallback;
import com.login.Euroricambi.wsdl.*;

public class TerrasoftService extends WebServiceGatewaySupport {

    private static final Logger LOGGER = LoggerFactory.getLogger(TerrasoftService.class);

    private ObjectFactory objectFactory = new ObjectFactory();


    public LoginCheckResponse loginCheck(String login, String password) {

        LoginCheck request = new LoginCheck();
        request.setLogin(objectFactory.createLoginCheckLogin(login));
        request.setPassword(objectFactory.createLoginCheckPassword(password));


        return (LoginCheckResponse) getWebServiceTemplate()
                .marshalSendAndReceive(request, buildCallback(request.getClass()));
    }


    public GetOfferingInfoForInternetShopResponse getOfferingInfoForInternetShop(int index) {
        GetOfferingInfoForInternetShop request = new GetOfferingInfoForInternetShop();
        request.setIndex(index);

        return (GetOfferingInfoForInternetShopResponse) getWebServiceTemplate()
                .marshalSendAndReceive(request, buildCallback(request.getClass()));
    }

    public GetAccountInfoForProjectEuroricambiResponse getAccountInfoForProjectEuroricambi(String contactId){
        GetAccountInfoForProjectEuroricambi request = new GetAccountInfoForProjectEuroricambi();
        request.setContactId(contactId);

        return (GetAccountInfoForProjectEuroricambiResponse) getWebServiceTemplate()
                .marshalSendAndReceive(request, buildCallback(request.getClass()));
    }


    private WebServiceMessageCallback buildCallback(Class asClass){
       return new SoapActionCallback("http://tempuri.org/ITerrasoftData/" + asClass.getSimpleName());
    }
}