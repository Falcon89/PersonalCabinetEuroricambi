package com.login.Euroricambi.controller;

import com.cloudinary.utils.ObjectUtils;
import com.login.Euroricambi.Utils.CloudinaryConfig;
import com.login.Euroricambi.dao.NewsDao;
import com.login.Euroricambi.dao.NewsTechnicalDao;
import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.entity.NewsTechnical;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Map;

@Controller
public class NewsAdminController {

    @Autowired
    NewsDao newsDao;

    @Autowired
    NewsTechnicalDao newsTechnicalDao;

    @Autowired
    CloudinaryConfig cloudc;

    @PostMapping("/saveNews")
    public String saveNews(@ModelAttribute News news, @RequestParam("file")MultipartFile file){
        LocalDateTime giveMinitesLater = LocalDateTime.now();
        if (file.isEmpty()){
            return "redirect:/index";
        }
        try
        {   //image is saved into MAP uploadresult

            Map uploadResult =  cloudc.upload(file.getBytes(), ObjectUtils.asMap("resourcetype", "auto"));
            news.setFotonews(uploadResult.get("url").toString());



            String filename = uploadResult.get("public_id").toString() + "." + uploadResult.get("format").toString();
            System.out.println("filename = "  + filename);

            // String newURL = cloudc.createUrl(filename,100,50, "crop");
            String newURL = cloudc.createColorImageSize(filename,"red",300, 80, "crop");
            System.out.println("newurl = "  + newURL);

//            news.setFotonews(newURL);
//            news.setDateTime(LocalDateTime.now());
            newsDao.save(news);
        }
        catch (IOException e)
        {
            e.printStackTrace();
            return "redirect:/newsEditing";
        }
        return "redirect:/newsEditing";
    }
/**/

@PostMapping("/saveNewsTechnical")
public String saveNewsTechnical(@ModelAttribute NewsTechnical newsTechnical, @RequestParam("file")MultipartFile file){

    if (file.isEmpty()){
        return "redirect:/newsEditing";
    }
    try
    {   //image is saved into MAP uploadresult

        Map uploadResult =  cloudc.upload(file.getBytes(), ObjectUtils.asMap("resourcetype", "auto"));
        newsTechnical.setFotonews(uploadResult.get("url").toString());



        String filename = uploadResult.get("public_id").toString() + "." + uploadResult.get("format").toString();
        System.out.println("filename = "  + filename);

        String newURL = cloudc.createColorImageSize(filename,"red",600, 200, "crop");
        System.out.println("newurl = "  + newURL);

        newsTechnicalDao.save(newsTechnical);
    }
    catch (IOException e)
    {
        e.printStackTrace();
        return "redirect:/newsEditing";
    }
    return "redirect:/newsEditing";
}
}
