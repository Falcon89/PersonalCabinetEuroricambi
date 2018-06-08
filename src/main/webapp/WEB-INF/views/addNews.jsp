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
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon.png">
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



                    <div class="col-lg-12 col-sm-12">

                        <div class="header">
                            <h4 class="title"> Список новини</h4>
                        </div>

                        <table class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th class="">Назва новини</th>
                                <th class="">Дата новини</th>
                                <th class="">Текст новини</th>
                                <th class="" style="width: 200px">Редагувати/Видалити</th>


                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td style="text-align:center;" class="">1</td>
                                <td class="">user123</td>
                                <td style="text-align:center;" class="">123@hotmail.com</td>

                                <td style="text-align:center;">
                                    <!--                <button class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button>-->
                                    <a href="${pageContext.request.contextPath}/updateNews"><button class="btn btn-success" contenteditable="false">Edit</button></a>
                                    <button class="btn btn-danger" contenteditable="false">Delete</button>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Додавання новини</h4>
                            </div>
                            <div class="content">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Назва новини</label>
                                                <input type="text" class="form-control border-input" placeholder="Назва новини" >
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Дата новини</label>
                                                <input type="email" class="form-control border-input" placeholder="01.06.2018">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Додати фото</label>
                                                <input class="form-control border-input" type="file" name="f">

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Текст новини</label>
                                                <textarea rows="10" class="form-control border-input" placeholder="Текст новини" ></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-success  btn-wd">Добавити</button>
                                    </div>
                                    <div class="clearfix"></div>
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
