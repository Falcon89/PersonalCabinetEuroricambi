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
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar bar1"></span>
                    <span class="icon-bar bar2"></span>
                    <span class="icon-bar bar3"></span>
                </button>
                <!--                    <a class="navbar-brand" href="#">Dashboard</a>-->
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="dropdown-toggle" data-toggle="dropdown">

                            <i class="fa fa-phone number close_1+"></i>
                            <p class="number">067 050 050 050</p>
                        </a>
                    </li>
                    <li class="close_1">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="ti-user number "></i>
                            <p class="number">Персональний менеджер</p>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope number"></i>
                            <p class="number">Онлайн допомога</p>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</header>
</body>
</html>
