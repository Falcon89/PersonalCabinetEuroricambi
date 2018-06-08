package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NewsController {
    @GetMapping("/addNews")
    public String addNews() {
        return "addNews";
    }

    @GetMapping("/addNewsTechnical")
    public String addNewsTechnical() {
        return "addNewsTechnical";
    }

    @GetMapping("/newsEditing")
    public String newsEditing() {
        return "newsEditing";
    }

    @GetMapping("/news")
    public String news() {
        return "news";
    }

    @GetMapping("/newsFull")
    public String newsFull() {
        return "newsFull";
    }

    @GetMapping("/newsTechnicallInformation")
    public String newsTechnicallInformation() {
        return "newsTechnicallInformation";
    }

    @GetMapping("/newsTechnicallInformationFull")
    public String newsTechnicallInformationFull() {
        return "newsTechnicallInformationFull";
    }

    @GetMapping("/updateNews")
    public String updateNews(){
        return "updateNews";
    }
    @GetMapping("/updateNewsTechnical")
    public String updateNewsTechnical(){
        return "updateNewsTechnical";
    }

}
