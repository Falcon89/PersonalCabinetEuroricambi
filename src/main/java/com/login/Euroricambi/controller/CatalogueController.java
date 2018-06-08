package com.login.Euroricambi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CatalogueController {

    @GetMapping("/catalogue")
    public String catalogue() {
        return "catalogue";
    }

    @GetMapping("/catalogueCaterpillar")
    public String catalogueCaterpillar() {
        return "catalogueCaterpillar";
    }

    @GetMapping("/catalogueCrown")
    public String catalogueCrown() {
        return "catalogueCrown";
    }

    @GetMapping("/catalogueDaf")
    public String catalogueDaf() {
        return "catalogueDaf";
    }

    @GetMapping("/catalogueDafDifferential")
    public String catalogueDafDifferential() {
        return "catalogueDafDifferential";
    }

    @GetMapping("/catalogueDana")
    public String catalogueDana() {
        return "catalogueDana";
    }

    @GetMapping("/catalogueFulleMid")
    public String catalogueFulleMid() {
        return "catalogueFulleMid";
    }

    @GetMapping("/catalogueFulleTr")
    public String catalogueFulleTr() {
        return "catalogueFulleTr";
    }

    @GetMapping("/catalogueGenerallist")
    public String catalogueGenerallist() {
        return "catalogueGenerallist";
    }

    @GetMapping("/catalogueIveco")
    public String catalogueIveco() {
        return "catalogueIveco";
    }

    @GetMapping("/catalogueMan")
    public String catalogueMan() {
        return "catalogueMan";
    }

    @GetMapping("/catalogueMarcedesBenzOne")
    public String catalogueMarcedesBenzOne() {
        return "catalogueMarcedesBenzOne";
    }

    @GetMapping("/catalogueMarcedesBenzTwo")
    public String catalogueMarcedesBenzTwo() {
        return "catalogueMarcedesBenzTwo";
    }

    @GetMapping("/catalogueMarcedesBenzThree")
    public String catalogueMarcedesBenzThree() {
        return "catalogueMarcedesBenzThree";
    }

    @GetMapping("/catalogueMeritor")
    public String catalogueMeritor(){
        return "catalogueMeritor";
    }

    @GetMapping("/catalogueOtherCatalogueDetroit")
    public String catalogueOtherCatalogueDetroit(){
        return "catalogueOtherCatalogueDetroit";
    }

    @GetMapping("/catalogueRenaultTrucks")
    public String catalogueRenaultTrucks(){
        return "catalogueRenaultTrucks";
    }

    @GetMapping("/catalogueScania")
    public String catalogueScania(){return "catalogueScania";}

    @GetMapping("/catalogueVolvo")
    public String catalogueVolvo(){return "catalogueVolvo";}

    @GetMapping("/catalogueVolvoCe")
    public String catalogueVolvoCe(){
        return "catalogueVolvoCe";
    }

    @GetMapping("/catalogueZFTransmissionsOne")
    public String catalogueZFTransmissionsOne(){
        return "catalogueZFTransmissionsOne";
    }

    @GetMapping("/catalogueZFTransmissionsTwo")
    public String catalogueZFTransmissionsTwo(){
        return "catalogueZFTransmissionsTwo";
    }

    @GetMapping("/catalogueZFTransmissionsThree")
    public String catalogueZFTransmissionsThree(){
        return "catalogueZFTransmissionsTwo";
    }

    @GetMapping("/catalogueZFTransmissionsFour")
    public String catalogueZFTransmissionsFour(){
        return "catalogueZFTransmissionsFour";
    }

    @GetMapping("/catalogueZFTransmissionsFive")
    public String catalogueZFTransmissionsFive(){
        return "catalogueZFTransmissionsFive";
    }

}
