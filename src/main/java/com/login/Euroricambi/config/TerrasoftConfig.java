package com.login.Euroricambi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;
import com.login.Euroricambi.service.TerrasoftService;


@Configuration
public class TerrasoftConfig {
    @Bean
    public Jaxb2Marshaller marshaller() {
        Jaxb2Marshaller marshaller = new Jaxb2Marshaller();
        marshaller.setContextPath("com.login.Euroricambi.wsdl");
        return marshaller;
    }
    @Bean
    public TerrasoftService quoteClient(Jaxb2Marshaller marshaller) {
        TerrasoftService client = new TerrasoftService();
        client.setDefaultUri("http://82.207.107.237:35053/TerrasoftDataService/TerrasoftData.svc");
        client.setMarshaller(marshaller);
        client.setUnmarshaller(marshaller);
        return client;
    }
}