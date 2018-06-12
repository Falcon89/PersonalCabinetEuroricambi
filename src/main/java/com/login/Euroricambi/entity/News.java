package com.login.Euroricambi.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
public class News implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String title;
    private LocalDateTime dateTime;
    private String date;
    @Lob
    private String text;

//    private String pathToImage;

    private String fotonews;
    private String newURL;

    public News() {
    }

    public News(long id, String title, LocalDateTime dateTime, String date, String text, String fotonews, String newURL) {
        this.id = id;
        this.title = title;
        this.dateTime = dateTime;
        this.date = date;
        this.text = text;
        this.fotonews = fotonews;
        this.newURL = newURL;
    }

    public News(long id, String title, String date, String text) {
        this.id = id;
        this.title = title;
        this.date = date;
        this.text = text;
    }

    public String getFotonews() {
        return fotonews;
    }

    public void setFotonews(String fotonews) {
        this.fotonews = fotonews;
    }

    public String getNewURL() {
        return newURL;
    }

    public void setNewURL(String newURL) {
        this.newURL = newURL;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", dateTime=" + dateTime +
                ", date='" + date + '\'' +
                ", text='" + text + '\'' +
                ", fotonews='" + fotonews + '\'' +
                ", newURL='" + newURL + '\'' +
                '}';
    }
}
