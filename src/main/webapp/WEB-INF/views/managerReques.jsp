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
<fmt:requestEncoding value="UTF-8"/>
<body>
<div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="col-lg-12 col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Надіслати повідомлення(Запит)</h4>
                    </div>
                    <div class="content">
                        <form:form action="SendMaseegeManager" method="post" accept-charset="UTF-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Заголовок</label>
                                        <input type="text" name="title" class="form-control border-input"   placeholder="Home Address" value="Львів, Україна">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Від кого</label>
                                        <input type="text" name="userName" class="form-control border-input"   placeholder="Home Address" value="Іванов Іван Іванович">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Опис</label>
                                        <textarea rows="10" cols="45" type="text" name="message" class="form-control border-input"   placeholder="Текст для менеджера" value=""> </textarea>
                                    </div>
                                </div>
                            </div>



                            <div class="clearfix"></div>
                            <div class="modal-footer">
                                <button type="reset" class="btn btn-danger" data-dismiss="modal">Закрити</button>
                                <button type="submit" class="btn btn-primary">Надіслати</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>

</html>
