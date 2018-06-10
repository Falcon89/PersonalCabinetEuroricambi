package com.login.Euroricambi.service;

import javax.mail.MessagingException;

/**
 * Create by Vasyl 06.06.2018
 */
public interface MailService {
    void sendEmail(String theme,String mailBody,String sentToEmail) throws MessagingException;
}
