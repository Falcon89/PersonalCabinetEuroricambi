package com.login.Euroricambi.serviceImpl;

import com.login.Euroricambi.dao.NewsTechnicalDao;
import com.login.Euroricambi.entity.NewsTechnical;
import com.login.Euroricambi.service.NewsTechnicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class NewsTechnicalServiceImpl implements NewsTechnicalService {
@Autowired
private NewsTechnicalDao newsTechnicalDao;


    @Override
    public void save(NewsTechnical newsTechnical) {
        newsTechnicalDao.save(newsTechnical);
    }

    @Override
    public List<NewsTechnical> findAll() {
        return (List<NewsTechnical>) newsTechnicalDao.findAll();
    }

    @Override
    public NewsTechnical findOne(long id) {
        return newsTechnicalDao.findOne(id);
    }

    @Override
    public void delete(long id) {
 newsTechnicalDao.delete(id);
    }

    @Override
    public List<NewsTechnical> findFourLastNewsTechnical() {
        return newsTechnicalDao.findFourLastNewsTechnical();
    }


    @Override
    public void update(NewsTechnical newsTechnical) {
NewsTechnical newsTechnicalFromBD = newsTechnicalDao.findOne(newsTechnical.getId());
        newsTechnicalFromBD.setTitle(newsTechnical.getTitle());
        newsTechnicalFromBD.setDate(newsTechnical.getDate());
        newsTechnicalFromBD.setText(newsTechnical.getText());
        newsTechnicalFromBD.setFotonews(newsTechnical.getFotonews());

        newsTechnicalDao.save(newsTechnicalFromBD);
    }
}
