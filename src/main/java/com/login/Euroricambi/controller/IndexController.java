package com.login.Euroricambi.controller;

import com.login.Euroricambi.Utils.NewsUtil;
import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.entity.NewsTechnical;
import com.login.Euroricambi.service.NewsService;
import com.login.Euroricambi.service.NewsTechnicalService;
import com.login.Euroricambi.wsdl.ContactInfo;
import com.login.Euroricambi.wsdl.LoginCheckResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;

    @Autowired
    Terrasoft terrasoft;

    @Autowired
    private NewsTechnicalService newsTechnicalService;

    //    @RequestMapping("/index")
//    public String index() {
//        return "index";
//    }
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    public String index(Model model, HttpServletRequest request) {
        System.out.println(request);
        LoginCheckResponse response = terrasoft.loginCheck("","");
        ContactInfo info = response.getCInfo().getValue();
        model.addAttribute("username", info.getFirstName().getValue());
        model.addAttribute("password", info.getLastName().getValue());
        model.addAttribute("other", info.getClientStoreCityName().getValue());
        model.addAttribute("log", info.getLogin().getValue());


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

//    @PostMapping("/")
//    public String indexAfterLogin() {
//        return "redirect:/index";
//    }
//
//    @GetMapping("/index")
//    public String newsIndex(Model model) {
//
//        return "index";
//    }

}
