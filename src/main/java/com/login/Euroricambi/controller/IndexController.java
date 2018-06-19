package com.login.Euroricambi.controller;

import com.login.Euroricambi.Utils.NewsUtil;
import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.entity.NewsTechnical;
import com.login.Euroricambi.security.model.EuroricambiUser;
import com.login.Euroricambi.security.model.TerrasoftAuthentication;
import com.login.Euroricambi.service.NewsService;
import com.login.Euroricambi.service.NewsTechnicalService;
import com.login.Euroricambi.service.TerrasoftService;
import com.login.Euroricambi.wsdl.AccountInfoForProjectEuroricambi;
import com.login.Euroricambi.wsdl.GetAccountInfoForProjectEuroricambiResponse;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;

    @Autowired
    TerrasoftService terrasoftService;

    @Autowired
    private NewsTechnicalService newsTechnicalService;

    private TerrasoftAuthentication terrasoftAuthentication;

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
    public String index(Model model, @AuthenticationPrincipal TerrasoftAuthentication authentication) {
        EuroricambiUser user = (EuroricambiUser) authentication.getPrincipal();
        GetAccountInfoForProjectEuroricambiResponse response = terrasoftService.getAccountInfoForProjectEuroricambi(user.getContactId());
        AccountInfoForProjectEuroricambi info = response.getGetAccountInfoForProjectEuroricambiResult().getValue();
//        model.addAttribute("phone", info.getPaymentTypeName().getValue());
        model.addAttribute("info", info);

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
