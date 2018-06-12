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
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Admin panel Euroricamby</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />
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
                    <div class="col-lg-8 col-sm-12">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <!--       <div class=" col-sm-12 col-md-6 col-lg-12">-->
                                    <div class="row">
                                        <div class="leftbar_content">
                                            <h2>Технічная інформація</h2>
                                            <div class="single_stuff wow fadeInDown">
                                                <div class="single_stuff_img"> <a href="pages/single.html"><img src="images/news_euro.jpg" alt=""></a> </div>
                                                <div class="single_stuff_article">
                                                    <div class="single_sarticle_inner">
                                                        <div class="">
                                                            <a class="stuff_category" href="#">Технології</a>
                                                        </div>
                                                        <div class=" col-sm-2 col-md-2 col-lg-2">
                                                            <div class="stuff_article_inner"> <span class="stuff_date">Чер <strong>17</strong></span>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div class="col-lg-10">
                                                            <h2><a href="pages/single.html">Продовжуємо тісну співпрацю з Euroricambi</a></h2>
                                                        </div>
                                                        <div>

                                                            <p class="text-centr">Euroricambi - визнаний бренд у світі запчастин до КПП і АКПП для вантажівок європейського виробництва.

                                                                Компанія Странс є найбільшим дистрибютором запчастин до коробок передач для вантажних автомобілів в Україні по бренду Єврорікамбі ( Euroricambi )....</p></div>
                                                        <div class="rign">
                                                            <a href="technicalInformationFull.html" class="read-more">Детальніше</a>
                                                        </div>
                                                        <!--                  </div>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--        </div>                             -->







                                </div>

                            </div>
                        </div>








                    </div>

                    <div class="col-lg-8 col-sm-12">

                        <div class="card">

                            <div class="content">

                                <div class="row">
                                    <div class="leftbar_content">
                                        <h2>Останні новини</h2>
                                        <div class="col-lg-6 col-sm-6">
                                            <figure class="snip1237">
                                                <div class="image">
                                                    <img src="images/euro_2.jpg" alt="sample74"/><i class="ion-ios-clock-outline"></i>
                                                    <div class="date"><span class="day">30</span><span class="month">Травня</span></div>
                                                </div>
                                                <figcaption>
                                                    <h3>Вся продукция Euroricambi</h3>
                                                    <p>Вже багато років ця швидко зростаюча італійська компанія виробляє запасні частини для коробок перемикання передач (КПП), роздавальних коробок, диференціалів передніх і задніх мостів..</p>
                                                    <a href="newsFull.html" class="read-more">Читати більше</a>
                                                </figcaption>
                                            </figure>

                                        </div>
                                        <div class="col-lg-6 col-sm-6">

                                            <figure class="snip1237">
                                                <div class="image">
                                                    <img src="images/euro_2.jpg" alt="sample74"/><i class="ion-ios-clock-outline"></i>
                                                    <div class="date"><span class="day">17</span><span class="month">Nov</span></div>
                                                </div>
                                                <figcaption>
                                                    <h3>ПРОДОВЖУЄМО ТІСНУ СПІВПРАЦЮ З EURORICAMBI</h3>
                                                    <p>Euroricambi - визнаний бренд у світі запчастин до КПП і АКПП для вантажівок європейського виробництва.</p>
                                                    <div class="rign">
                                                        <a href="#" class="read-more">Детальніше</a>
                                                    </div>
                                                </figcaption>
                                            </figure>

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>







                </div>

            </div>
        </div>
        <div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Надіслати повідомлення(Запит)</h4>
                            </div>
                            <div class="content">
                                <form>


                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Заголовок</label>
                                                <input type="text" class="form-control border-input"   placeholder="Home Address" value="Львів, Україна">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Від кого</label>
                                                <input type="text" class="form-control border-input"   placeholder="Home Address" value="Іванов Іван Іванович">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Опис</label>
                                                <textarea rows="10" cols="45" type="text" class="form-control border-input"   placeholder="Текст для менеджера" value=""> </textarea>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="clearfix"></div>
                                    <div class="modal-footer">
                                        <button type="reset" class="btn btn-danger" data-dismiss="modal">Закрити</button>
                                        <button type="submit" class="btn btn-primary">Надіслати</button>
                                    </div>
                                </form>
                            </div>
                        </div>
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
