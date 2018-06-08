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
                    <div class=" col-sm-12 col-md-5 col-lg-5">
                        <div class="row">
                            <div class="leftbar_content">
                                <!--            <h2>The New Stuff</h2>-->
                                <div class="single_stuff wow fadeInDown">
                                    <div class="single_stuff_img"> <a href="${pageContext.request.contextPath}/newsTechnicallInformationFull"><img src="/images/news_euro.jpg" alt=""></a> </div>
                                    <div class="single_stuff_article">
                                        <div class="single_sarticle_inner">
                                            <div class="">
                                                <div class="stuff_category" href="#">Технології</div>
                                            </div>
                                            <div class=" col-sm-2 col-md-2 col-lg-2">
                                                <div class="stuff_article_inner"> <span class="stuff_date">Чер <strong>17</strong></span>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-lg-10">
                                                <h2><a>Продовжуємо тісну співпрацю з Euroricambi</a></h2>
                                            </div>
                                            <div>

                                                <p class="text-centr">Euroricambi - визнаний бренд у світі запчастин до КПП і АКПП для вантажівок європейського виробництва.

                                                    Компанія Странс є найбільшим дистрибютором запчастин до коробок передач для вантажних автомобілів в Україні по бренду Єврорікамбі ( Euroricambi )....</p></div>
                                            <div class="rign">
                                                <a href="${pageContext.request.contextPath}/newsTechnicallInformationFull" class="read-more">Детальныше</a>
                                            </div>
                                            <!--                  </div>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class=" col-sm-12 col-md-5 col-lg-5">
                        <div class="row">
                            <div class="leftbar_content">
                                <!--            <h2>The New Stuff</h2>-->
                                <div class="single_stuff wow fadeInDown">
                                    <div class="single_stuff_img"> <a href="pages/single.html"><img src="/images/news_euro.jpg" alt=""></a> </div>
                                    <div class="single_stuff_article">
                                        <div class="single_sarticle_inner">
                                            <div class="">
                                                <div class="stuff_category" href="#">Технології</div>
                                            </div>
                                            <div class=" col-sm-2 col-md-2 col-lg-2">
                                                <div class="stuff_article_inner"> <span class="stuff_date">Чер <strong>17</strong></span>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-lg-10">
                                                <h2><a>Продовжуємо тісну співпрацю з Euroricambi</a></h2>
                                            </div>
                                            <div>

                                                <p class="text-centr">Euroricambi - визнаний бренд у світі запчастин до КПП і АКПП для вантажівок європейського виробництва.

                                                    Компанія Странс є найбільшим дистрибютором запчастин до коробок передач для вантажних автомобілів в Україні по бренду Єврорікамбі ( Euroricambi )....</p></div>
                                            <div class="rign">
                                                <a href="technicalInformationFull.html" class="read-more">Детальныше</a>
                                            </div>
                                            <!--                  </div>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class=" col-sm-12 col-md-5 col-lg-5">
                        <div class="row">
                            <div class="leftbar_content">
                                <!--            <h2>The New Stuff</h2>-->
                                <div class="single_stuff wow fadeInDown">
                                    <div class="single_stuff_img"> <a href="pages/single.html"><img src="/images/news_euro.jpg" alt=""></a> </div>
                                    <div class="single_stuff_article">
                                        <div class="single_sarticle_inner">
                                            <div class="">
                                                <div class="stuff_category" href="#">Технології</div>
                                            </div>
                                            <div class=" col-sm-2 col-md-2 col-lg-2">
                                                <div class="stuff_article_inner"> <span class="stuff_date">Чер <strong>17</strong></span>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-lg-10">
                                                <h2><a>Продовжуємо тісну співпрацю з Euroricambi</a></h2>
                                            </div>
                                            <div>

                                                <p class="text-centr">Euroricambi - визнаний бренд у світі запчастин до КПП і АКПП для вантажівок європейського виробництва.

                                                    Компанія Странс є найбільшим дистрибютором запчастин до коробок передач для вантажних автомобілів в Україні по бренду Єврорікамбі ( Euroricambi )....</p></div>
                                            <div class="rign">
                                                <a href="technicalInformationFull.html" class="read-more">Детальныше</a>
                                            </div>
                                            <!--                  </div>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class=" col-sm-12 col-md-5 col-lg-5">
                        <div class="row">
                            <div class="leftbar_content">
                                <!--            <h2>The New Stuff</h2>-->
                                <div class="single_stuff wow fadeInDown">
                                    <div class="single_stuff_img"> <a href="pages/single.html"><img src="/images/news_euro.jpg" alt=""></a> </div>
                                    <div class="single_stuff_article">
                                        <div class="single_sarticle_inner">
                                            <div class="">
                                                <div class="stuff_category" href="#">Технології</div>
                                            </div>
                                            <div class=" col-sm-2 col-md-2 col-lg-2">
                                                <div class="stuff_article_inner"> <span class="stuff_date">Чер <strong>17</strong></span>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="col-lg-10">
                                                <h2><a>Продовжуємо тісну співпрацю з Euroricambi</a></h2>
                                            </div>
                                            <div>

                                                <p class="text-centr">Euroricambi - визнаний бренд у світі запчастин до КПП і АКПП для вантажівок європейського виробництва.

                                                    Компанія Странс є найбільшим дистрибютором запчастин до коробок передач для вантажних автомобілів в Україні по бренду Єврорікамбі ( Euroricambi )....</p></div>
                                            <div class="rign">
                                                <a href="technicalInformationFull.html" class="read-more">Детальныше</a>
                                            </div>
                                            <!--                  </div>-->
                                        </div>
                                    </div>
                                </div>
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