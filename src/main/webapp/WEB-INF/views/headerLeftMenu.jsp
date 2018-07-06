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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
</head>
<fmt:requestEncoding value="UTF-8"/>
<body>
<header>
    <div class="sidebar" data-background-color="white" data-active-color="danger">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text"><img src="${pageContext.request.contextPath}/assets/img/euroricambi_log.png" width="100%">
                </a>
            </div>

            <ul class="nav">
                <li class="active+ green">
                    <a class="green" href="${pageContext.request.contextPath}/index">
                        <i class="ti-home close_1+"></i>
                        <p>Головна</p>
                    </a>
                </li>
                <li class="green">
                    <a href="${pageContext.request.contextPath}/userProfil">
                        <i class="ti-user close_1"></i>
                        <p>Профіль користувача</p>
                    </a>
                </li>
                <li class="green">
                    <a href="${pageContext.request.contextPath}/catalogue">
                        <i class="ti-view-list-alt close_1"></i>
                        <p>Каталог Euroricambi</p>
                    </a>
                </li>
                <li class="green">
                    <a href="${pageContext.request.contextPath}/newsTechnicallInformation">
                        <i class="ti-comment-alt close_1"></i>
                        <p>Технічна інформація</p>
                    </a>
                </li>

                <li class="green">
                    <a href="${pageContext.request.contextPath}/news">
                        <i class="far fa-bell close_1 "></i>
                        <p>Новини</p>
                    </a>
                </li>
<sec:authorize access="hasRole('ROLE_ADMIN')">
                <li class="green">
                    <a href="${pageContext.request.contextPath}/newsEditing">
                        <i class="ti-bell+ "></i>
                        <i class="far fa-address-card"></i>
                        <p>Адміністрування</p>
                    </a>
                </li>
</sec:authorize>
                <li class="close_1+">
                    <a class="boton-icono log_color" href="/logout" title="Вийти"><i class="fas fa-sign-out-alt" aria-hidden="true"></i>
                        <p>Вийти</p>
                    </a>
                </li>
                <li class="active-pro close_1">
                    <a href="http://euroricambi.com.ua">
                        <p>Перейти на головний сайт</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</header>
<!-- RedHelper -->
<script id="rhlpscrtg" type="text/javascript" charset="utf-8" async="async"
        src="https://web.redhelper.ru/service/main.js?c=falcon8989">
</script>
<!--/Redhelper -->
</body>
</html>
