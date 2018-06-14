package com.login.Euroricambi.dao;


import com.login.Euroricambi.entity.NewsTechnical;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.util.List;

//@EnableJpaRepositories("com.login.Euroricambi.service.dao")
//@ComponentScan(basePackages = { "com.login.Euroricambi.service.dao" })
//@EntityScan("com.login.Euroricambi.service.dao")
public interface NewsTechnicalDao extends JpaRepository<NewsTechnical, Long>{
NewsTechnical findOne(Long id);
    @Query(value = "select * from news order by date_time desc limit 1", nativeQuery = true)
    List<NewsTechnical> findFourLastNewsTechnical();
}
