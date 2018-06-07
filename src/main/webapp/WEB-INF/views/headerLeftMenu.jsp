<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
</head>
<fmt:requestEncoding value="UTF-8"/>
<body>
<header>
    <div class="sidebar" data-background-color="white" data-active-color="danger">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text"><img src="assets/img/euroricambi_log.png" width="100%">
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="index.html">
                        <i class="ti-home"></i>
                        <p>Головна</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="ti-user close_1"></i>
                        <p>Профіль користувача</p>
                    </a>
                </li>
                <li>
                    <a href="catalogue.html">
                        <i class="ti-view-list-alt close_1"></i>
                        <p>Каталог Euroricambi</p>
                    </a>
                </li>
                <li>
                    <a href="technicalInformation.html">
                        <i class="ti-comment-alt close_1"></i>
                        <p>Технічна інформація</p>
                    </a>
                </li>

                <li>
                    <a href="news.html">
                        <i class="ti-bell close_1"></i>
                        <p>Новини</p>
                    </a>
                </li>
                <li>
                    <a href="admin.html">
                        <i class="ti-bell+ close_1"></i>
                        <p>Адміністрування</p>
                    </a>
                </li>
                <li class="close_1">
                    <a class="boton-icono log_color" href="#" title="Вийти"><i class="fa fa-sign-out " aria-hidden="true"></i>
                        <p>Вийти</p>
                    </a>
                </li>
                <li class="active-pro close_1">
                    <a href="#">
                        <p>Перейти на головний сайт</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</header>
</body>
</html>
