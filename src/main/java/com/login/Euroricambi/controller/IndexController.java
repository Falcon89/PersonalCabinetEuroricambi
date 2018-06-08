package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping("/index")
    public String index (){
        return "index";
    }

    @PostMapping("/index")
    public String indexAfterLogin(){return "redirect:/index";
    }
}
