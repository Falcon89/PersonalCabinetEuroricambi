package com.login.Euroricambi.service;


import com.login.Euroricambi.entity.News;

import java.util.List;

public interface NewsService {
    void save (News news);

    List<News> findAll();

    News findOne (long id);

    void delete(long id);

//    List<News> findFourLastNews();

    void update(News news);
}
