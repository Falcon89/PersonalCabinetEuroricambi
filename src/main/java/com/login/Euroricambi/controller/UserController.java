package com.login.Euroricambi.controller;

import com.login.Euroricambi.security.model.EuroricambiUser;
import com.login.Euroricambi.security.model.TerrasoftAuthentication;
import com.login.Euroricambi.service.NewsService;
import com.login.Euroricambi.service.NewsTechnicalService;
import com.login.Euroricambi.service.TerrasoftService;
import com.login.Euroricambi.wsdl.AccountInfoForProjectEuroricambi;
import com.login.Euroricambi.wsdl.GetAccountInfoForProjectEuroricambiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import java.security.Principal;

/**
 * Created by admin on 2/3/2018.
 */
@Controller
public class UserController {
    @Autowired
    private NewsService newsService;

    @Autowired
    TerrasoftService terrasoftService;

    @Autowired
    private NewsTechnicalService newsTechnicalService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/userProfil")
    public String userProfil(Model model, @AuthenticationPrincipal TerrasoftAuthentication authentication){
        EuroricambiUser user = (EuroricambiUser) authentication.getPrincipal();
        GetAccountInfoForProjectEuroricambiResponse response = terrasoftService.getAccountInfoForProjectEuroricambi(user.getContactId());
        AccountInfoForProjectEuroricambi info = response.getGetAccountInfoForProjectEuroricambiResult().getValue();
        model.addAttribute("info", info);
        return  "userProfil";}


}
