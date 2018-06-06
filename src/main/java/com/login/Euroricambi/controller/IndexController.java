package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping("/")
    public String index (Model model){
        return "index";
    }

    @PostMapping("/")
    public String indexAfterLogin(){return "redirect:/";
    }
}
