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
                    <div class="col-lg-4 col-sm-12">
                        <jsp:include page="userDetailTerrasoft.jsp"/>
                        <jsp:include page="ePointsTerrasoft.jsp"/>
                        <jsp:include page="managerRequestOne.jsp"/>
                    </div>
                    <div class="col-lg-8 col-md-12">
                        <%--<div class="card">--%>
                            <div class="header">
                                <h4 class="title">Додаткова інформація</h4>
                            </div>
                            <div class="content">
                                <form>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>П.І.Б</label>
                                                <input type="text" class="form-control border-input" disabled value="${info.getUserName().getValue()}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>ЕГРПОН/ОКПО</label>
                                                <input type="text" class="form-control border-input" disabled value="${info.getEvidenceRegistryNumber().getValue()}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Платник ПДВ</label>
                                                <input type="text" class="form-control border-input" disabled value="${info.getVATPayerName().getValue()}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Свідоцтво ПДВ</label>
                                                <input type="text" class="form-control border-input" disabled  value="${info.getEvidenceDocument().getValue()}">
                                            </div>
                                        </div>
                                    </div>
                                    <p>Адресні дані</p><hr>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Адреса</label>
                                                <input type="text" class="form-control border-input" disabled  value="${info.getStreet().getValue()} ">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Індекс</label>
                                                <input type="text" class="form-control border-input" disabled   value="${info.getZipCode().getValue()}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Область</label>
                                                <input type="text" class="form-control border-input" disabled  value="${info.getRegion().getValue()}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Населений пункт</label>
                                                <input type="text" class="form-control border-input" disabled  value="${info.getLocality().getValue()}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>E-mail</label>
                                                <input type="text" class="form-control border-input" disabled   value="${info.getEmail().getValue()}">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Телефон 1</label>
                                                <input type="text" class="form-control border-input" disabled   value="${info.getMobilePhone().getValue()}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Телефон 2</label>
                                                <input type="text" class="form-control border-input" disabled   value="${info.getPhone().getValue()}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        <%--</div>--%>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <jsp:include page="managerReques.jsp"/>
    </div>
</div>
</body>
<jsp:include page="include_js.jsp"/>
</html>
