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
    <link href="${pageContext.request.contextPath}/favicon.ico" rel="shortcut icon">
    <script src='https://cdn.tinymce.com/4/tinymce.min.js'></script>
    <script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"></script>
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
<c:forEach var="news" items="${newses}">
                            <tr>
                                <td class="">${news.title}</td>
                                <td style="text-align:center;" class="">${news.date}</td>
                                <td style="text-align:center;" class="">${news.text}</td>
                                <td style="text-align:center;">
                                    <!--                <button class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button>-->
                                   <a href="/updateNews/${news.id}"><button class="btn btn-success" contenteditable="false">Edit</button></a>
                                   <a href="/deleteNews/${news.id}"> <button class="btn btn-danger" contenteditable="false">Delete</button></a>
                                </td>
                            </tr>
</c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <style>.card{background-color: #ffffff00!important;}</style>
                            <div class="header">
                                <h4 class="title">Додавання новини</h4>
                            </div>
                            <div class="content">
                                <form action="./saveNews?${_csrf.parameterName}=${_csrf.token}" method="post" accept-charset="UTF-8"
                                     class="form-horizontal form-label-left"    enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Назва новини</label>
                                                <input type="text" name="title" class="form-control border-input" placeholder="Назва новини" >
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Дата новини</label>
                                                <input type="text" name="date" class="form-control border-input" placeholder="01.06.2018">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="custom-file-label text-danger">
                                                    файли PNG та JPEG з розширенням 310х210!</label>
                                                <input class="form-control border-input" type="file" name="file" id="fileChooser"
                                                       onchange="return ValidateFileUpload()" required>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Текст новини</label>
                                                <textarea rows="10" id="mytextarea" name="text" class="form-control border-input" placeholder="Текст новини"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <style>
                                        form {}

                                        textarea#editable {}
                                    </style>
                                    <script>

                                        tinymce.init({
                                            selector: '#mytextarea'
                                        });</script>
                                    <script>

                                        tinymce.init({
                                            selector: '#mytextarea'
                                        });</script>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-success  btn-wd">Добавити</button>
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

<SCRIPT type="text/javascript">
    function ValidateFileUpload() {
        var fuData = document.getElementById('fileChooser');
        var FileUploadPath = fuData.value;

//To check if user upload any file
        if (FileUploadPath == '') {
            alert("Завантажте зображення");

        } else {
            var Extension = FileUploadPath.substring(
                FileUploadPath.lastIndexOf('.') + 1).toLowerCase();

//The file uploaded is an image

            if (Extension == "png" || Extension == "jpeg" || Extension == "jpg") {

// To Display
                if (fuData.files && fuData.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#blah').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(fuData.files[0]);
                }

            }

//The file upload is NOT an image
            else {
                alert("Фото підтримує лише типи файлів PNG, JPG та JPEG з розширенням 290х35.");

            }
        }
    }
</SCRIPT>
</body>

<jsp:include page="include_js.jsp"/>


</html>
