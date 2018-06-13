package com.login.Euroricambi.controller;

import com.login.Euroricambi.Utils.NewsUtil;
import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.entity.NewsTechnical;
import com.login.Euroricambi.service.NewsService;
import com.login.Euroricambi.service.NewsTechnicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;

    @Autowired
    private NewsTechnicalService newsTechnicalService;

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @PostMapping("/")
    public String indexAfterLogin() {
        return "redirect:/index";
    }

    @GetMapping("/index")
    public String newsIndex(Model model) {
        List<News> newses = newsService.findFourLastNews();
        if (!newses.isEmpty()) {
            model.addAttribute("newses", NewsUtil.showShortNewsTextForListNewsIndex(newsService.findFourLastNews()));
        }

        List<NewsTechnical> newsesTh = newsTechnicalService.findFourLastNewsTechnical();
        if (!newsesTh.isEmpty()) {
            model.addAttribute("newsesTh", NewsUtil.showShortNewsTechnicalForListNewsTechnicalIndex(newsTechnicalService.findFourLastNewsTechnical()));
        }
        return "index";
    }

}
