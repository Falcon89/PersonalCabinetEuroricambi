package com.login.Euroricambi.Utils;

import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.entity.NewsTechnical;

import java.util.ArrayList;
import java.util.List;

/**
 * Create by Vasyl on 12.06.2018
 */
public class NewsUtil {
    private static long id;

    public static News showShortNewsText(News news) {
        if (news.getText().length() > 100) news.setText(news.getText().substring(0, 110) + "...");
        return news;
    }

    public static List<News> showShortNewsTextForListNews(List<News> newses){
        List<News> shortNewses=new ArrayList<>();
        for (News news : newses){
            shortNewses.add(showShortNewsText(news));
        }
        return shortNewses;
    }
    /**/
    public static News shortNewsTextIndex(News news) {
        if (news.getText().length() > 60) news.setText(news.getText().substring(0, 136) + "...");
        if (news.getTitle().length() > 30) news.setTitle(news.getTitle().substring(0, 28) + "...");
        return news;
    }

    public static List<News> showShortNewsTextForListNewsIndex(List<News> newses) {
        List<News> shotrNewses = new ArrayList<>();
        for (News news : newses) {
            shotrNewses.add(shortNewsTextIndex(news));
        }
        return shotrNewses;

    }

    /**/
    public static NewsTechnical showShortNewsTechnicalText(NewsTechnical newsTechnical) {
        if (newsTechnical.getText().length() > 100) newsTechnical.setText(newsTechnical.getText().substring(0, 110) + "...");
        return newsTechnical;
    }

    public static List<NewsTechnical> showShortNewsTechnicalForListNewsTechnical(List<NewsTechnical> newsesTh){
        List<NewsTechnical> shortNewsTehn = new ArrayList<>();
        for (NewsTechnical newsTechnical : newsesTh){
            shortNewsTehn.add(showShortNewsTechnicalText(newsTechnical));
        }
        return shortNewsTehn;
    }



    /**/
    public static NewsTechnical showShortNewsTechnicalTextIndex(NewsTechnical newsTechnical) {
        if (newsTechnical.getText().length() > 100) newsTechnical.setText(newsTechnical.getText().substring(0, 110) + "...");
        return newsTechnical;
    }

    public static List<NewsTechnical> showShortNewsTechnicalForListNewsTechnicalIndex(List<NewsTechnical> newsesTh){
        List<NewsTechnical> shortNewsTehn = new ArrayList<>();
        for (NewsTechnical newsTechnical : newsesTh){
            shortNewsTehn.add(showShortNewsTechnicalTextIndex(newsTechnical));
        }
        return shortNewsTehn;
    }


}
