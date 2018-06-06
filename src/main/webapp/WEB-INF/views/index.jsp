<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page session="true"%>
<!doctype html>
<html>
<head>
    <meta charset=UTF-8>
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <title>Admin panel Euroricamby</title>


    <jsp:include page="include_css.jsp"/>
    <fmt:requestEncoding value="UTF-8"/>
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">

        <!--
            Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
            Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
        -->

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text"><img src="assets/img/euroricambi_log.png" width="100%">

                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="index.html">
                        <i class="ti-home"></i>
                        <p>Головна</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="ti-user close_1"></i>
                        <p>Профіль користувача</p>
                    </a>
                </li>
                <li>
                    <a href="catalogue.html">
                        <i class="ti-view-list-alt close_1"></i>
                        <p>Каталог Euroricambi</p>
                    </a>
                </li>
                <li>
                    <a href="technicalInformation.html">
                        <i class="ti-comment-alt close_1"></i>
                        <p>Технічна інформація</p>
                    </a>
                </li>

                <li>
                    <a href="news.html">
                        <i class="ti-bell close_1"></i>
                        <p>Новини</p>
                    </a>
                </li>
                <li>
                    <a href="admin.html">
                        <i class="ti-bell+ close_1"></i>
                        <p>Адміністрування</p>
                    </a>
                </li>
                <li class="close_1">
                    <a class="boton-icono log_color" href="#" title="Вийти"><i class="fa fa-sign-out " aria-hidden="true"></i>
                        <p>Вийти</p>
                    </a>
                </li>
                <li class="active-pro close_1">
                    <a href="#">
                        <p>Перейти на головний сайт</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <!--                    <a class="navbar-brand" href="#">Dashboard</a>-->
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                                <i class="fa fa-phone number close_1+"></i>
                                <p class="number">067 050 050 050</p>
                            </a>
                        </li>
                        <li class="close_1">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-user number "></i>
                                <p class="number">Персональний менеджер</p>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope number"></i>
                                <p class="number">Онлайн допомога</p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-sm-12">
                        <div class="card card-user">
                            <div class="image imgUp">
                                <img src="images/log_us.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                    <img class="avatar border-white" src="images/user_log.png" alt="..."/>
                                    <h4 class="title">Иванов Иван Иванович<br />
                                        <!--                                     <a href="#"><small>@E-mail</small></a>-->
                                    </h4>
                                </div>
                                <!--
                                                                <p class="description text-center">
                                                                    "Текст"
                                                                </p>
                                -->
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>
                                            <strong class="point_collro">133 666<br/>
                                            </strong>Сальдо</h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5><strong class="point_collro">250 000<br/>
                                        </strong>Ліміт</h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5><strong class="point_collro">21<br/>
                                        </strong>Термін</h5>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-12">
                                        <h5>Безготовковий перерахунок<br /></h5>
                                        Спосіб оплати
                                    </div>

                                </div>
                            </div>
                        </div>





                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <div class="icon-big icon-warning text-center">
                                            <img src="images/1_euro.svg" width="80%">
                                            <!--                                            <i class="ti-server"></i>-->
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Мої бали по euroricambi</p>
                                            <strong class="point_collro"> 1 050</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <a href="index.html"> <i class="ti-reload"></i></a><b> Оновити</b>
                                    </div>
                                </div>
                            </div>
                        </div>





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

                                                <span class="text-success">Euroricambi</span>
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

        <footer class="footer">
            <div class="container-fluid">
                <div class="copyright pull-right">

                    Copyright &copy; <script>document.write(new Date().getFullYear())</script> - Euroricambi. All rights reserved.
                </div>
            </div>
        </footer>

    </div>
</div>

<jsp:include page="include_js.jsp"/>
</body>


<script type="text/javascript">
    $(document).ready(function(){

        demo.initChartist();

        $.notify({
//            	icon: 'ti-gift',
            message: "Вітаємо в Особисному Кабінеті <b> Euroricambi</b>"

        },{
            type: 'success',
            timer: 60
        });

    });
</script>




</html>
