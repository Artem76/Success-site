<?xml version="1.0" encoding="utf-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html;charset=utf-8" %>

<html lang="uk">
<html>
<head>
    <title>Success-site</title>
    <link rel="shortcut icon" href="/images/ico.ico" type="image/ico">
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/js/jquery.min.js"></script>
    <link href="/css/style-admin.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Preface Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design"/>
    <!-- webfonts -->
    <link href='//fonts.googleapis.com/css?family=Asap:400,700,400italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
    <!-- webfonts -->
    <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="/js/move-top.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!---- start-smoth-scrolling---->
</head>
<body>
<div id="up" class="header">

    <div class="container">

        <!-- top-hedader -->
        <div class="top-header">

            <!-- /logo -->
            <!--top-nav---->
            <div class="top-nav">
                <div class="logo">
                    <h1><a href="/"><span>S</span>Success-Site</a></h1>
                </div>

                <div class="navigation">
                    <nav>
                        <ul>
                            <li><a class="scroll" href="#messages">Повідомлення</a></li>
                            <li><a class="scroll" href="#email">Електронна адреса</a></li>
                            <li><a class="scroll" href="#password">Пароль</a></li>
                            <li><a id="logout" href="/logout">Вихід</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="clearfix"></div>
                <!-- /top-hedader -->
            </div>
        </div>

        <div id="visits" class="boxes">
            <h2>Відвідання сайту.</h2>
            <div class="box">
                <h4>Кількість відвідань за отанню добу: <b>${visits_day}</b></h4>
                <h4>Кількість відвідань за отанній тиждень: <b>${visits_week}</b></h4>
            </div>
        </div>

        <div id="messages" class="boxes">
            <h2>Повідомлення.</h2>
            <c:forEach items="${messages}" var="message">
                <div class="box" id="${message.id}">
                    <h4>Дата та час: ${message.date}</h4>
                    <h4>Ім'я: <b>${message.nameClient}</b></h4>
                    <h4>Електронна адреса: <a href="mailto:${message.emailClient}">${message.emailClient}</a></h4>
                    <h4>Телефон: <a href="tel:${message.phoneClient}">${message.phoneClient}</a></h4>
                    <h4>Зміст повідомлення:</h4>
                    <pre>${message.message}</pre>
                    <a href="/admin/delete_message?message_id=${message.id}" class="button">Видалити</a>
                </div>
            </c:forEach>
        </div>

        <div id="email" class="boxes">
            <h2>Електронна адреса адміністратора.</h2>
            <div class="box">
                <h4>Діюча електронна пошта: <a href="mailto:${email}">${email}</a></h4>
                <form action="/admin/email_new">
                    <input class="text" type="email" name="email_new" placeholder="Введіть нову адресу...">
                    <h4>Нову електронну адресу необхідно буде активувати.</h4>
                    <input class="button" type="submit" value="Оновити адресу.">
                </form>
            </div>
        </div>

        <div id="password" class="boxes">
            <h2>Зміна пароля адміністратора.</h2>
            <div class="box">
                <form action="/admin/password_new">
                    <input class="text" type="password" name="password_new" placeholder="Введіть новий пароль...">
                    <h4>Новий пароль буде надіслано на вашу електронну пошту.</h4>
                    <input class="button" type="submit" value="Оновити пароль.">
                </form>
            </div>
        </div>
    </div>
</div>

<a href="#up" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!--start-smooth-scrolling-->
<script type="text/javascript">
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({easingType: 'easeOutQuart'});

    });


</script>
<!--end-smooth-scrolling-->
<!-- //for bootstrap working -->
<script src="/js/bootstrap.js"></script>
<script>
    $("#logout").click(function (event) {
        alert("Вихід з акаунту!");
    });
</script>

</body>
</html>

