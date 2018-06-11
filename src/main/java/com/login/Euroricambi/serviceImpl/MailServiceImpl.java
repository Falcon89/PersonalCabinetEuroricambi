package com.login.Euroricambi.serviceImpl;

import com.login.Euroricambi.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/**
 * Create by Vasyl on 06.06.2018.
 */

@Service
public class MailServiceImpl implements MailService {

    @Autowired
    private JavaMailSender mailSender;

    @Async
    @Override
    public void sendEmail(String theme, String mailBody, String sendToEmail) throws MessagingException {
        try {
            MimeMessage mimeMessage = mailSender.createMimeMessage();
//            mimeMessage.setHeader("Content-Type", "text/plain; charset=UTF-8");
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, false, "UTF-8");
            mimeMessage.setSubject(theme, "UTF-8");
            mimeMessage.setContent(mailBody, "text/html; charset=UTF-8");

            helper.setTo(sendToEmail);
            helper.setSubject("Contact form LoginEuroricambi");

            synchronized (this) {
                mailSender.send(mimeMessage);
            }
        } catch (MessagingException mex) {
            mex.printStackTrace();
            System.out.println("You have some problems with connection!");
        }
    }
}
