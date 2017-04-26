<?xml version="1.0" encoding="utf-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html;charset=utf-8" %>

<html lang="en">
<html>
<head>
    <title>Success-site</title>
    <link rel="shortcut icon" href="/images/ico.ico" type="image/ico">
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="/css/style.css" rel='stylesheet' type='text/css'/>
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
<!-- container -->
<!-- header -->
<div id="home" class="header">

    <div class="container">
        <div class="lang clearfix">
            <nav>
                <ul>
                    <li><a href="/en"><img src="/images/en.jpg" alt="EN"></a></li>
                    <li><a href="/ua"><img src="/images/ua.jpg" alt="UA"></a></li>
                    <li><a href="/ru"><img src="/images/ru.jpg" alt="RU"></a></li>
                </ul>
            </nav>
        </div>
        <div class="clr"></div>
        <!-- top-hedader -->
        <div class="top-header">

            <!-- /logo -->
            <!--top-nav---->
            <div class="top-nav">
                <div class="navigation">

                    <div class="logo">
                        <h1><a href="/en"><span>S</span>Success-Site</a></h1>
                    </div>

                    <div class="navigation-right">
                        <span class="menu"><img src="/images/menu.png" alt=" "/></span>
                        <nav class="link-effect-3" id="link-effect-3">
                            <ul class="nav1 nav nav-wil">
                                <li class="active read hvr-shutter-in-horizontal" data-toggle="modal" data-target="#myModal1"><a data-hover="Заказать" href="#">Заказать</a></li>
                                <li><a class="scroll" data-hover="Главная" href="#about">Главная</a></li>
                                <li><a class="scroll" data-hover="Услуги" href="#services">Услуги</a></li>
                                <li><a class="scroll" data-hover="Блоги" href="#blogs">Блоги</a></li>
                                <li><a class="scroll" data-hover="Контакты" href="#contact">Контакты</a></li>
                            </ul>
                        </nav>
                        <!-- script-for-menu -->
                        <script>
                            $("span.menu").click(function () {
                                $("ul.nav1").slideToggle(300, function () {
                                    // Animation complete.
                                });
                            });
                        </script>
                        <!-- /script-for-menu -->
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- /top-hedader -->
            </div>
            <div class="banner-info">
                <div class="col-md-7 header-right">
                    <h1>Привет !</h1>
                    <a href="#" data-toggle="modal" data-target="#myModal1"><h6>Закажи у нас сайт</h6></a>
                    <ul class="address">

                        <li>
                            <ul class="address-text">
                                <li><b>ДЕЛАЕМ </b></li>
                                <li>Сайты на любой вкус.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>ЦЕНА </b></li>
                                <li>Подберем для вас подходящий вариант.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>СТИЛЬ </b></li>
                                <li>Исполним все ваши желания.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>ПОМОЩЬ </b></li>
                                <li>Окажем полное содействие.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>EMAIL </b></li>
                                <li><a href="mailto:artem.khirgii@gmail.com"> artem.khirgii@gmail.com</a></li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>WEBSITE </b></li>
                                <li><a href="http://success-site.inf.ua">success-site.inf.ua</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
                <div class="col-md-5 header-left">
                    <img src="/images/Programmer-CV-Resume-Sample-Template.jpg" alt="">
                </div>
                <div class="clearfix"></div>

            </div>
        </div>
    </div>
</div>
<!-- about -->
<div id="about" class="about">
    <div class="col-md-6 about-left">
        <div id="owl-demo1" class="owl-carousel owl-carousel2">
            <div class="item">
                <div class="about-left-grid">
                    <h2>Путь к успеху!!!<span></span></h2>
                    <p>Мы сделаем для вас сайт который обеспечит ваш бизнес интернет аудиторией.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Заказать</a></li>
                        <li><a class="a-btn-h scroll" href="#contact">Спросить</a></li>
                    </ul>
                </div>
            </div>
            <div class="item">
                <div class="about-left-grid">
                    <h2>Лучший сайт<span></span></h2>
                    <p>Любые пожелания клиента мы воплотим в жизнь.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Заказать</a></li>
                        <li><a class="a-btn-h scroll" href="#contact">Спросить</a></li>
                    </ul>
                </div>
            </div>
            <div class="item">
                <div class="about-left-grid">
                    <h2>Высокие доходы<span></span></h2>
                    <p>Ваш сай обеспечит приток огромного колличества клиентов со всего мира.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Заказать</a></li>
                        <li><a class="a-btn-h scroll" href="#contact">Спросить</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 about-right">

    </div>
    <div class="clearfix"></div>
    <link href="/css/owl.carousel.css" rel="stylesheet">
    <script src="/js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#owl-demo1").owlCarousel({
                items: 1,
                lazyLoad: false,
                autoPlay: true,
                navigation: false,
                navigationText: false,
                pagination: true,
            });
        });
    </script>
    <!-- Feedback -->
    <script>
        $(document).ready(function () {
            $("#owl-demo3").owlCarousel({
                items: 1,
                lazyLoad: false,
                autoPlay: true,
                navigation: false,
                navigationText: true,
                pagination: true,
            });
        });
    </script>
</div>
<!-- /about -->
<!-- services -->
<div id="services" class="services">
    <div class="container">
        <div class="service-head one text-center ">
            <h4>ЧТО МЫ ДЕЛАЕМ ?</h4>
            <h3>Наши <span>УСЛУГИ</span></h3>
            <span class="border two"></span>
        </div>
        <!-- services-grids -->
        <div class="wthree_about_right_grids w3l-agile">
            <div class="col-md-6 wthree_about_right_grid">
                <div class="col-xs-4 wthree_about_right_grid_left">
                    <div class="hvr-rectangle-in">
                        <i class="glyphicon glyphicon-leaf"></i>
                    </div>
                </div>
                <div class="col-xs-8 wthree_about_right_grid_right">
                    <h4>Визитка</h4>
                    <p>Для представления личной информации в интернете, вам понадобится сайт-визитка.<br><br>
                        Это маленький сайт, состоящий из нескольких страниц, предназначенный для предоставления информации об
                        одном человеке.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-6 wthree_about_right_grid">
                <div class="col-xs-4 wthree_about_right_grid_left">
                    <div class="hvr-rectangle-in">
                        <i class="glyphicon glyphicon-pencil"></i>
                    </div>
                </div>
                <div class="col-xs-8 wthree_about_right_grid_right">
                    <h4>Блог</h4>
                    <p>Каждому блогеру свой сайт.<br><br>
                        Блог — это сайт, предназначенный для публикации новостей по определенной тематике.<br><br>
                        Такой сайт должен состоять из двух частей: пользовательской и блогера.<br><br>
                        Пользовательская часть позволяет посетителю насладится полнотой контета представленного в вашем
                        блоге, а блогерная часть, предназначенная для добавления, редактирования или удаления материалов.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-6 wthree_about_right_grid">
                <div class="col-xs-4 wthree_about_right_grid_left">
                    <div class="hvr-rectangle-in">
                        <i class="glyphicon glyphicon-gift"></i>
                    </div>
                </div>
                <div class="col-xs-8 wthree_about_right_grid_right">
                    <h4>Интернет-магазин</h4>
                    <p>Какая может быть торговля без интернет-магазина.<br><br>
                        Интернет-магазин — это крупный сайт, состоящий из большого количества страниц и сложной серверной части.<br><br>
                        Наш абсолютно индивидуальный подход привлечет множество клиентов для вашего бизнеса.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-6 wthree_about_right_grid">
                <div class="col-xs-4 wthree_about_right_grid_left">
                    <div class="hvr-rectangle-in">
                        <i class="glyphicon glyphicon-cog"></i>
                    </div>
                </div>
                <div class="col-xs-8 wthree_about_right_grid_right">
                    <h4>Корпоративный</h4>
                    <p>Сайт, предназначенный для представления в интернете информации о предприятиях и корпорациях.<br><br>
                        Корпоративный сайт может содержать множество разделов, предназначенных для: работы с клиентом, наема
                        персонала, описания услуг, контактной информации…</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>

        <!-- services-grids -->
    </div>
</div>
<!-- services -->

<!-- top-grids -->
<div class="blog" id="blogs">
    <div class="container">
        <div class="service-head text-center">
            <h4>О ЧЕМ ПИШЕМ ?</h4>
            <h3>Наши <span>БЛОГИ</span></h3>
            <span class="border one"></span>
        </div>
        <div class="news-grid w3l-agile">
            <div class="col-md-6 news-img">
                <a href="#" data-toggle="modal" data-target="#myModal1"> <img src="/images/original.jpg" alt=" "
                                                                              class="img-responsive"></a>

            </div>
            <div class="col-md-6 news-text">
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Оригинальность</a></h3>
                <p>Мы предлагаем создать для вас сайт не шаблонный, а уникальный. <br>
                    Ваш сайт будет выгодно отличаться от рутины, заполнившей интернет.<br>
                    В качестве дизайнера сайта с вами будет работать профессиональный художник, который сможет выделить
                    уникальность и индивидуальность ваших идей.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ЗАКАЗАТЬ САЙТ</a>

            </div>

            <div class="clearfix"></div>
        </div>
        <div class="news-grid">

            <div class="col-md-6 news-text two">
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Адаптивность</a></h3>
                <p>Написанный нами сайт будет отлично смотреться на мониторе с любым разрешением, на планшетах,
                    смартфонах и даже мобильных телефонах.<br>
                    В зависимости от размеров экрана вашего устройства ваш сайт будет автоматически изменять свою компоновку
                    для наилучшего представления информации.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ЗАКАЗАТЬ САЙТ</a>

            </div>
            <div class="col-md-6 news-img two">
                <a href="#" data-toggle="modal" data-target="#myModal1"> <img src="/images/device.jpg" alt=" "
                                                                              class="img-responsive"></a>

            </div>
            <div class="clearfix"></div>
        </div>
        <div class="news-grid">
            <div class="col-md-6 news-img">
                <a href="#" data-toggle="modal" data-target="#myModal1"> <img src="/images/browser.jpg" alt=" "
                                                                              class="img-responsive"></a>

            </div>
            <div class="col-md-6 news-text">
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Кроссбраузерность</a></h3>
                <p>Разные браузеры по-своему отображают интернет страницы, но мы заставим все известные браузеры работать
                    одинаково. <br> Ваш сайт всегда будет работать корректно.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ЗАКАЗАТЬ САЙТ</a>

            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- top-grids -->
<!-- /blog-pop-->
<div class="modal ab fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog about" role="document">
        <div class="modal-content about">
            <div class="modal-header">
                <button type="button" class="close ab" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body about">
                <div class="about">

                    <div class="about-inner mail_right">

                        <form action="/order" method="post">
                            <input type="text" name="name" value="Ваше имя" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Ваше имя';}" required="">
                            <input type="email" name="email" value="Email" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Email';}" required="">
                            <input type="text" name="phone" value="Номер телефона" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Номер телефона';}" required="">
                            <textarea name="message" onfocus="this.value = '';"
                                      onblur="if (this.value == '') {this.value = 'Краткое описание...';}"
                                      required="">Краткое описание...</textarea>
                            <input type="hidden" name="lang" value="en">
                            <p>* После отправки заказа к вам на электронную почту, в течени 10-ти минут, прийдет письмо.
                                Если письмо не прийдет, то проверьте в СПАМЕ.</p>
                            <input type="submit" value="Отправить заказ">
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- //blog-pop-->

<!-- /header -->
<div class="footer" id="contact">
    <div class="container">
        <div class="service-head one text-center">
            <h4>КАК СВЯЗАТЬСЯ ?</h4>
            <h3>Наши <span>КОНТАКТЫ</span></h3>
            <span class="border two"></span>
        </div>
        <div class="mail_us">
            <div class="col-md-6 mail_left">
                <div class="contact-grid1-left">
                    <div class="contact-grid1-left1">
                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        <h4>Электронная почта</h4>
                        <ul>
                            <li>E-mail: <a href="mailto:artem.khirgii@gmail.com">artem.khirgii@gmail.com</a></li>

                        </ul>
                    </div>
                </div>
                <div class="contact-grid1-left">
                    <div class="contact-grid1-left1">
                        <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                        <h4>Телефон</h4>
                        <ul>
                            <li>Phone: <a href="tel:+380979468925">+38 097 946 89 25</a></li>
                        </ul>
                    </div>
                </div>
                <div class="contact-grid1-left">
                    <div class="contact-grid1-left1">
                        <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
                        <h4>Наш сайт</h4>
                        <ul>
                            <li><a href="http://success-site.inf.ua">success-site.inf.ua</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-6 mail_right">
                <form action="/question" method="post">
                    <input type="text" name="name" value="Ваше имя" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Ваше имя';}" required="">
                    <input type="email" name="email" value="Email" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Email';}" required="">
                    <input type="text" name="phone" value="Номер телефона" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Номер телефона';}" required="">
                    <textarea name="message" onfocus="this.value = '';"
                              onblur="if (this.value == '') {this.value = 'Текст сообщения...';}"
                              required="">Текст сообщения...</textarea>
                    <input type="hidden" name="lang" value="en">
                    <input type="submit" value="Отправить сообщение">

                </form>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="copy_right text-center">
            <p>&copy; 2016 Preface . All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts.</a>
            </p>
        </div>
    </div>
</div>
<!-- //footer -->

<a href="#home" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
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


</body>
</html>

