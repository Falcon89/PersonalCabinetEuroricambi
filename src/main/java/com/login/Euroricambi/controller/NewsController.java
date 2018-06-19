package com.login.Euroricambi.controller;


import com.login.Euroricambi.Utils.CloudinaryConfig;
import com.login.Euroricambi.Utils.NewsUtil;
import com.login.Euroricambi.dao.NewsDao;
import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.entity.NewsTechnical;
import com.login.Euroricambi.service.NewsService;
import com.login.Euroricambi.service.NewsTechnicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class NewsController {

    @Autowired
    CloudinaryConfig cloudc;

    @Autowired
    NewsDao newsDao;

    @Autowired
    NewsTechnicalService newsTechnicalService;

    @Autowired
    NewsService newsService;


    @GetMapping("/addNews")
    public String addNews(Model model) {
        model.addAttribute("newses", newsService.findAll());
        model.addAttribute("news", new News());
        return "addNews";
    }

    @GetMapping("/addNewsTechnical")
    public String addNewsTechnical(Model model) {
        model.addAttribute("newsesTe", newsTechnicalService.findAll());
        model.addAttribute("newsTechnical", new NewsTechnical());
        return "addNewsTechnical";
    }

    @GetMapping("/newsEditing")
    public String newsEditing() {
        return "newsEditing";
    }

    @GetMapping("/news")
    public String news(Model model) {
//        model.addAttribute("newses", newsService.findAll());
        model.addAttribute("newses", NewsUtil.showShortNewsTextForListNews(newsService.findAll()));
        model.addAttribute("news", new News());
        return "news";
    }

    @GetMapping("/newsFull/{id}")
    public String newsFull(@PathVariable long id, Model model) {
        model.addAttribute("news", newsService.findOne(id));
        return "newsFull";
    }

    @GetMapping("/newsTechnicallInformation")
    public String newsTechnicallInformation(Model model) {
        model.addAttribute("newsesTh", NewsUtil.showShortNewsTechnicalForListNewsTechnical(newsTechnicalService.findAll()));
        model.addAttribute("newsTechnical", new NewsTechnical());
        return "newsTechnicallInformation";
    }

    @GetMapping("/newsTechnicallInformationFull/{id}")
    public String newsTechnicallInformationFull(@PathVariable long id, Model model) {
        model.addAttribute("newsTechnical", newsTechnicalService.findOne(id));
        return "newsTechnicallInformationFull";
    }

    @GetMapping("/updateNews/{id}")
    public String updateNews(Model model, @PathVariable(value = "id") Long id) {
        model.addAttribute("news", newsService.findOne(id));
        return "updateNews";
    }

    @PostMapping("/updateNewsPage/{id}")
    public String updateNewsPage(@PathVariable long id,
                                 @RequestParam String title,
                                 @RequestParam String date,
                                 @RequestParam String text,
                                 @RequestParam String fotonews) {
        newsService.update(new News(id, title, date, text, fotonews));
        return "redirect:/newsEditing";
    }

    @GetMapping("/deleteNews/{id}")
    public String deleteNews(@PathVariable long id) {
        newsService.delete(id);
        return "redirect:/addNews";
    }


    @GetMapping("/updateNewsTechnical/{id}")
    public String updateNewsTechnical(Model model, @PathVariable(value = "id") Long id) {
        model.addAttribute("newsTehnical", newsTechnicalService.findOne(id));
        return "updateNewsTechnical";
    }

    @PostMapping("updateNewsTechnicalPage/{id}")
    public String updateNewsTechnicalPage(@PathVariable long id,
                                          @RequestParam String title,
                                          @RequestParam String date,
                                          @RequestParam String text,
                                          @RequestParam String fotonews) {
        newsTechnicalService.update(new NewsTechnical(id, title, date, text,fotonews));
        return "redirect:/newsEditing";
    }

    @GetMapping("/deleteNewsTechnical/{id}")
    public String deleteNewsTechnical(@PathVariable long id) {
        newsTechnicalService.delete(id);
        return "redirect:/addNewsTechnical";
    }


}
