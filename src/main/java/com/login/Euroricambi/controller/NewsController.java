package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NewsController {
    @GetMapping ("/addNews")
    public String addNews(){return  "addNews";}

    @GetMapping ("/addNewsTechnical")
    public String addNewsTechnical() {return  "addNewsTechnical";}

    @GetMapping ("/newsEditing")
    public String newsEditing() {return "newsEditing";}


}
