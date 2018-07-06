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
</head>
<fmt:requestEncoding value="UTF-8"/>
<body>
<div class="card">
    <div class="header">
        <h4 class="title">Менеджер з продаж</h4>
    </div>


    <div class="content">
        <ul class="list-unstyled team-members">
            <li>
                <div class="row">
                    <div class="col-xs-2">
                        <div class="avatar">
                            <img src="assets/img/faces/face-0.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <h6>Анатолій</h6>

                        <span class="text-success">Менеджер</span>
                    </div>


                    <div class="col-xs-6 text-right">
                        Надіслати запит

                        <a href="#" class="btn btn-sm btn-success btn-icon" data-toggle="modal" data-target="#basicModal"><i class="fa fa-envelope"></i></a>

                    </div>
                </div>
            </li>

        </ul>
    </div>

</div>
</body>
</html>
