<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Euroricamby</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <link href="favicon.ico" rel="shortcut icon">
</head>
<fmt:requestEncoding value="UTF-8"/>
<body>
<div class="card">
    <div class="content">
        <div class="row">
            <div class="col-xs-5">
                <div class="icon-big icon-warning text-center">
                    <img src="images/1_euro.svg" width="80%">
                </div>
            </div>
            <div class="col-xs-7">
                <div class="numbers">
                    <p>Мої бали по euroricambi</p>
                    <strong class="point_collro">${info.getAccountPointsForEuroricambi().getValue()}</strong>
                </div>
            </div>
        </div>
        <div class="footer">
            <hr />
            <div class="stats">
                <a href="${pageContext.request.contextPath}/index"> <i class="ti-reload"></i></a><b> Оновити</b>
            </div>
        </div>
    </div>
</div>
</body>
</html>
