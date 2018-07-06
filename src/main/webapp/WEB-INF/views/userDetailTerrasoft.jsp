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
    <title>Euroricambi</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
    <link href="favicon.ico" rel="shortcut icon">
</head>
<fmt:requestEncoding value="UTF-8"/>
<body>
<div class="card card-user">
    <div class="image imgUp">
        <img src="images/log_us.jpg" alt="..."/>
    </div>
    <div class="content">
        <div class="author">
            <img class="avatar border-white" src="images/user_log.png" alt="..."/>
            <h4 class="title">${info.getAccountName().getValue()}<br/>
            </h4>
        </div>
    </div>
    <hr>
    <div class="text-center">
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <h5>
                    <strong class="point_collro">${info.getSaldoSel().getValue()}<br/>
                    </strong>Сальдо</h5>
            </div>
            <div class="col-md-4">
                <h5><strong class="point_collro">${info.getLimit().getValue()}<br/>
                </strong>Ліміт</h5>
            </div>
            <div class="col-md-3">
                <h5><strong class="point_collro">${info.getDelay().getValue()}<br/>
                </strong>Термін</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h5><strong class="point_collro">${info.getPaymentTypeName().getValue()}<br/>
                </strong>Спосіб оплати</h5>
            </div>

        </div>
    </div>
</div>
</body>
</html>
