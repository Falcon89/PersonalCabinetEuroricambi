package com.login.Euroricambi.serviceImpl;

import com.login.Euroricambi.dao.NewsDao;
import com.login.Euroricambi.entity.News;
import com.login.Euroricambi.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsDao newsDao;

    @Override
    public void save(News news) {
newsDao.save(news);
    }

    @Override
    public List<News> findAll() {
        return (List<News>) newsDao.findAll();
    }

    @Override
    public News findOne(long id) {
        return newsDao.findOne(id);
    }

    @Override
    public void delete(long id) {
newsDao.delete(id);
    }

    @Override
    public List<News> findFourLastNews() {
        return newsDao.findFourLastNews();
    }


    @Override
    public void update(News news) {
        News newsFromDB = newsDao.findOne(news.getId());
        newsFromDB.setTitle(news.getTitle());
        newsFromDB.setDate(news.getDate());
        newsFromDB.setText(news.getText());
        newsFromDB.setFotonews(news.getFotonews());

        newsDao.save(newsFromDB);

    }
}
