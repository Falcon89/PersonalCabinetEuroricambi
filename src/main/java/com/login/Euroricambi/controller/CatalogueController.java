package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CatalogueController {

    @GetMapping("/catalogue")
    public String catalogue(){return "catalogue";}

    @GetMapping ("/catalogueCaterpillar")
    public String catalogueCaterpillar(){return "catalogueCaterpillar";}

    @GetMapping ("/catalogueCrown")
    public String catalogueCrown(){return "catalogueCrown";}

    @GetMapping ("/catalogueDaf")
    public String catalogueDaf(){return "catalogueDaf";}


}
