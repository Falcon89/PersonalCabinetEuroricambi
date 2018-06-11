package com.login.Euroricambi.service;


import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.entity.NewsTechnical;

import java.util.List;

public interface NewsTechnicalService {
    void save(NewsTechnical newsTechnical);

    List<NewsTechnical> findAll();

    NewsTechnical findOne(long id);

    void delete(long id);

//    List<NewsTechnical> findFourLastNews();

    void update(NewsTechnical newsTechnical);
}