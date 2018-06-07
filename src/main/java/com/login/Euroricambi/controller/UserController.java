package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import java.security.Principal;

/**
 * Created by admin on 2/3/2018.
 */
@Controller
public class UserController {

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/userProfil")
    public String userProfil(){return  "userProfil";}


}
