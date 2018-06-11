package com.login.Euroricambi.controller;


import com.login.Euroricambi.Utils.CloudinaryConfig;
//import com.login.Euroricambi.dao.NewsDao;
import com.login.Euroricambi.dao.NewsDao;
import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.service.MailService;
//import com.login.Euroricambi.service.NewsService;
import com.login.Euroricambi.service.NewsService;
import com.login.Euroricambi.service.NewsTechnicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NewsController {
    @Autowired
    private NewsService newsService;

    @Autowired
    CloudinaryConfig cloudc;

    @Autowired
    NewsDao newsDao;



    @GetMapping("/addNews")
    public String addNews(Model model) {
        model.addAttribute("newses", newsService.findAll());
        model.addAttribute("news", new News());
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
    public String news(Model model) {
//        model.addAttribute("newses", newsService.findAll() );
//        model.addAttribute("news", new News());
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
