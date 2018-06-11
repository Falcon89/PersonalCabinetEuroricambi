package com.login.Euroricambi.controller;

import com.login.Euroricambi.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class MailManagerController {

    @Autowired
    private MailService mailService;

    @PostMapping("/SendMaseegeManager")
    public String SendMaseegeManager(@RequestParam("title") String title,
                                     @RequestParam("userName") String userName,
                                     @RequestParam("message") String message) {
        Map<String, String> modelMap = new HashMap<>();
        modelMap.put("title", title);
        modelMap.put("userName", userName);
        modelMap.put("message", message);

        for (Map.Entry<String, String> entry : modelMap.entrySet()) {
            String key = entry.getKey();
            String value = (String) entry.getValue();
            System.out.println(" Key = " + entry.getKey() + ", Value = " + entry.getValue());
        }

        try {
            sendEmail(modelMap);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "mailThank";
    }

    private String sendEmail(Map<String, String> modelMap) throws Exception {
        mailService.sendEmail("send msg", generateMailContent(modelMap), "euroricambi.ua@gmail.com");
        return "redirect:/";


//        Old code
//        JavaMailSenderImpl sender = null;
//        MimeMessage message = sender.createMimeMessage();
//        MimeMessageHelper helper = new MimeMessageHelper(message);
//
//        ModelMap modelMap = new ModelMap();
////        modelMap.get(modelMap);
//        helper.setTo("euroricambi.ua@gmail.com");
//        helper.setSubject("euroricambi");
//        helper.setText("Message" + modelMap);
//        helper.setSubject("Euroricambi Contact Form");
//
//        sender.send(message);
    }

    private String wrapAttributeIntoHtml(String attribute) {
        return "<div style='text-align:left;font-family:Helvetica," +
                "Arial,sans-serif;font-size:15px;margin-bottom:0;" +
                "margin-top:3px;color:#5F5F5F;line-height:135%;'>" +
                attribute +
                "</div>\n";
    }

    private String generateMailContent(Map<String, String> attributes) {
        StringBuilder builder = new StringBuilder();

        for (String attribute : attributes.values()) {
            builder.append(wrapAttributeIntoHtml(attribute));
        }
        return builder.toString();
    }




    @RequestMapping("/mailThank")
    public String mailThank(){return "mailThank";}

}