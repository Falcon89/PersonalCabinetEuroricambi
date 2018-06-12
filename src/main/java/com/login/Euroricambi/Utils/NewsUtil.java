package com.login.Euroricambi.Utils;

import com.login.Euroricambi.entity.News;

import java.util.ArrayList;
import java.util.List;

/**
 * Create by Vasyl on 12.06.2018
 */
public class NewsUtil {
    private static long id;

    public static News showShortNewsText(News news) {
        if (news.getText().length() > 100) news.setText(news.getText().substring(0, 310) + "...");
        return news;
    }

    public static List<News> showShortNewsTextForListNews(List<News> newses){
        List<News> shortNewses=new ArrayList<>();
        for (News news : newses){
            shortNewses.add(showShortNewsText(news));

        }
        return shortNewses;
    }

    public static News showShortNewsTextIndex(News news) {
        if (news.getText().length() > 100) news.setText(news.getText().substring(0, 136) + "...");
        return news;
    }



}
