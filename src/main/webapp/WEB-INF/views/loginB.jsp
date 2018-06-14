<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Euroricambi</title>
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link href="favicon.ico" rel="shortcut icon">
</head>
<body>
<header>

</header>

<div class="container">
    <div class="doww">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-xs-12">
                <div class="wrapper">

                    <form class="login" action="index" method="post">
                        <br> <br>
                        <p class="log_in"><img src="img/Euroricambi_logo3.svg"></p>
                        <br> <br>
                        <div class="inp"><p class="inp2">
                            Увійти у систему
                        </p>
                        </div>
                        <br>
                        <p class="inp3">Для входу введіть свій логін та пароль</p>
                        <br>
                        <div class="inp_user">
                            <div class="form-group">
                                <span class="icon-case"><i class="fa++ fa-user++ use"></i></span>
                                <input type="text" name="username" placeholder="Логін"/>
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="inp_user">
                            <div class="form-group">
                                <span class="icon-case"><i class="fa++ fa-user++ pass"></i></span>
                                <input type="text" name="password" placeholder="Пароль" data-rule="required"/>
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="container+ butextP">
                            <button class="butext">ВХІД</button>
                        </div>
                        <br>
                        <p class="inn">Якщо у Вас немає данних для входу,<br>
                            зверніться до свого менеджера і уточніть деталі.</p>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!---->
<footer class="footers">
    <p class="fm">
        <img src="img/log-footer.png"></p>
</footer>
</body>
</html>