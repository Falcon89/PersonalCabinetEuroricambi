package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
    @RequestMapping(value = {"login"}, method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    public String login(Model model){
        return "login";
    }
}
