package com.login.Euroricambi.controller;

import com.login.Euroricambi.wsdl.ContactInfo;
import com.login.Euroricambi.wsdl.LoginCheckResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    public String login(Model model) {
        return "login";
    }

    @RequestMapping(value = {"/loginB"},
            method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    public String indexB(Model model) {
        return "loginB";
    }

}
