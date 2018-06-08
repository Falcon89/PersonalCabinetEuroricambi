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
                    <!--
                          <div class=" col-sm-12 col-md-5 col-lg-5">

                            </div>
                    -->
                    <div class=" col-sm-12 col-md-12 col-lg-10">
                        <!--  		<div class="col-md-8 col-md-offset-2 no-padding">-->

                        <article class="single-post">
                            <div class="post-header">
                                <h2><a href="#">Продовжуємо тісну співпрацю з Euroricambi</a></h2>
                                <!--								<span> 30.05.2018 </span>-->
                            </div>
                            <br>
                            <div class="post-content ">
                                <a href="#"><img src="/images/Euroricambi_news.jpg" alt="" class="img-responsive"></a>
                                <p class="text-centr">Делегація компанії Strans з робочим візитом відвідала фабрику компанії Euroricambi що знаходиться в місті Болонья Італія .

                                    http://www.euroricambi.com
                                    Euroricambi - визнаний бренд у світі запчастин до КПП і АКПП для вантажівок європейського виробництва.
                                    Компанія Странс є найбільшим дистрибютором запчастин до коробок передач для вантажних автомобілів в Україні по бренду Єврорікамбі ( Euroricambi )
                                    Протягом візиту на виробництво Euroricambi ми особисто переконалися у високих стандартах виробництва запчастин .
                                    Цей візит має велике значення для нашої компанії, адже досягнуто домовленостей про поглиблення співпраці. Завдяки цьому наші клієнти зможуть отримати якісні запчастини до своїх вантажівок за ще доступнішими цінами.</p>
                                <p>www.strans.ua </p>

                            </div>
                        </article>

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
