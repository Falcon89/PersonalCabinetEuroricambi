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
    <title>Admin panel Euroricamby</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
</head>
<jsp:include page="include_css.jsp"/>
<fmt:requestEncoding value="UTF-8"/>

<body>

<div class="wrapper">
    <jsp:include page="headerLeftMenu.jsp"/>

    <div class="main-panel">
        <jsp:include page="headerUpMenu.jsp"/>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Редагування технічної новини</h4>
                            </div>
                            <div class="content">
                                <form action="/updateNewsPage/${news.id}" method="post" accept-charset="UTF-8" novalidate="novalidate">
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Назва новини</label>
                                                <input type="text" class="form-control border-input" name="title" value="${news.title}" >
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Дата новини</label>
                                                <input type="email" class="form-control border-input" name="date" value="${news.date}">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Текст новини</label>
                                                <textarea rows="10" class="form-control border-input" type="text" name="text">
                                                    <c:out value="${news.text}"/>
                                                </textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-success  btn-wd">Зберегти</button>
                                    </div>
                                    <div class="clearfix"></div>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>

    </div>
</div>


</body>

<jsp:include page="include_js.jsp"/>


</html>
