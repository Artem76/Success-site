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
                        <h1><a href="/ua"><span>S</span>Success-Site</a></h1>
                    </div>

                    <div class="navigation-right">
                        <span class="menu"><img src="/images/menu.png" alt=" "/></span>
                        <nav class="link-effect-3" id="link-effect-3">
                            <ul class="nav1 nav nav-wil">
                                <li class="active read hvr-shutter-in-horizontal" data-toggle="modal"
                                    data-target="#myModal1"><a data-hover="Замовити" href="#">Замовити</a></li>
                                <li><a class="scroll" data-hover="Головна" href="#about">Головна</a></li>
                                <li><a class="scroll" data-hover="Послуги" href="#services">Послуги</a></li>
                                <li><a class="scroll" data-hover="Блоги" href="#blogs">Блоги</a></li>
                                <li><a class="scroll" data-hover="Контакти" href="#contact">Контакти</a></li>
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
                    <h1>Вітаємо !</h1>
                    <a href="#" data-toggle="modal" data-target="#myModal1"><h6>Замовте сайт у нас</h6></a>
                    <ul class="address">

                        <li>
                            <ul class="address-text">
                                <li><b>СТВОРЮЄМО </b></li>
                                <li>Сайти на різні смаки.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>ЦІНА </b></li>
                                <li>Запропонуємо вам найкращий варіант.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>СТИЛЬ </b></li>
                                <li>Врахуємо ваші побажання.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>ДОПОМОГА </b></li>
                                <li>Надаємо повну підтримку.</li>
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
                    <h2>Шлях до успіху!!!<span></span></h2>
                    <p>Ми створимо для вас сайт, що забезпечить вашому бізнесу інтернет-аудиторію.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Замовити</a>
                        </li>
                        <li><a class="a-btn-h scroll" href="#contact">Запитати</a></li>
                    </ul>
                </div>
            </div>
            <div class="item">
                <div class="about-left-grid">
                    <h2>Найкращий сайт<span></span></h2>
                    <p>Виконаємо будь-які побажання замовника.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Замовити</a>
                        </li>
                        <li><a class="a-btn-h scroll" href="#contact">Запитати</a></li>
                    </ul>
                </div>
            </div>
            <div class="item">
                <div class="about-left-grid">
                    <h2>Великі надходження<span></span></h2>
                    <p>Ваш сайт забезпечить залучення великої кількості клієнтів.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Замовити</a>
                        </li>
                        <li><a class="a-btn-h scroll" href="#contact">Запитати</a></li>
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
            <h4>ЩО МИ РОБИМО ?</h4>
            <h3>Наші <span>ПОСЛУГИ</span></h3>
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
                    <h4>Візитка</h4>
                    <p>Щоб надати особисту інформацію в інтернеті, вам знадобиться сайт-візитка.<br><br>
                        Це маленький сайт, що складається з кількох сторінок, які містять в собі мінімально необхідну
                        інформацію для представництва людини в інтернеті.</p>
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
                    <p>Кожному блогеру свій сайт.<br><br>
                        Блог — це сайт, призначення якого публікація новин певної тематики.<br><br>
                        Такий сайт повинен складатись з двох частин: одна – для користувача, інша – безпосередньо для
                        блогера.<br><br>
                        В своїй частині користувач отримує інформацію з контенту наведеного у вашому блозі. Блогер в
                        своїй частині має змогу додавати, редагувати чи видаляти матеріали.</p>
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
                    <h4>Інтернет-магазин</h4>
                    <p>Яка може бути торгівля без інтернет-магазину.<br><br>
                        Інтернет-магазин — це доволі великий сайт, що складається з великої кількості сторінок і
                        складної серверної частини.<br><br>
                        Привернути величезну кількість клієнтів для вашого бізнесу допоможе індивідуальний підхід до
                        подання товару та послуг.</p>
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
                    <h4>Корпоративний</h4>
                    <p>Сайт, що має надавати в інтернеті інформацію про підприємства чи корпорації.<br><br>
                        Корпоративний сайт може мати в собі багато розділів: робота з клієнтом, залучення персоналу,
                        надання інформації про товари та послуги, контактна інформація…</p>
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
            <h4>ПРО ЩО ПИШЕМО ?</h4>
            <h3>Наші <span>БЛОГИ</span></h3>
            <span class="border one"></span>
        </div>
        <div class="news-grid w3l-agile">
            <div class="col-md-6 news-img">
                <a href="#" data-toggle="modal" data-target="#myModal1"> <img src="/images/original.jpg" alt=" "
                                                                              class="img-responsive"></a>

            </div>
            <div class="col-md-6 news-text">
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Оригінальність</a></h3>
                <p>Ми пропонуємо створити для вас сайт не шаблонний, а унікальний. <br>
                    Ваш сайт буде вигідно виокремлюватись з рутини, що заполонила інтернет.<br>
                    В якості дизайнера сайту з вами буде працювати професійний художник, який підкреслить
                    унікальність та індивідуальність ваших ідей.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ЗАМОВИТИ
                    САЙТ</a>

            </div>

            <div class="clearfix"></div>
        </div>
        <div class="news-grid">

            <div class="col-md-6 news-text two">
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Адаптивність</a></h3>
                <p>Сайт, що ми напишемо, буде якісно відображено на моніторі з будь-якою роздільною здатністю, на
                    планшетах, смартфонах чи мобільних телефонах.<br>
                    В залежності від розмірів екрану вашого пристрою ваш сайт буде автоматично змінювати свою компоновку
                    для найкращого подання інформації.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ЗАМОВИТИ
                    САЙТ</a>

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
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Кроссбраузерність</a></h3>
                <p>Різні браузери по-своєму відображують інтернет-сторінки, але ми змусимо всі відомі браузери працювати
                    ідентично.<br> Ваш сайт завжди буде працювати коректно.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ЗАМОВИТИ
                    САЙТ</a>

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
                            <input type="text" name="name" value="Ваше ім'я" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Ваше ім\'я';}" required="">
                            <input type="email" name="email" value="Email" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Email';}" required="">
                            <input type="text" name="phone" value="Номер телефону" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Номер телефону';}" required="">
                            <textarea name="message" onfocus="this.value = '';"
                                      onblur="if (this.value == '') {this.value = 'Короткий опис...';}"
                                      required="">Короткий опис...</textarea>
                            <input type="hidden" name="lang" value="ua">
                            <p>* Якщо не отримали автоматичний лист-підтвердження перевірте СПАМ.</p>
                            <input type="submit" value="Надіслати замовлення">
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
            <h4>ЯК ЗВ'ЯЗАТИСЯ ?</h4>
            <h3>Наші <span>КОНТАКТИ</span></h3>
            <span class="border two"></span>
        </div>
        <div class="mail_us">
            <div class="col-md-6 mail_left">
                <div class="contact-grid1-left">
                    <div class="contact-grid1-left1">
                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        <h4>Електронна пошта</h4>
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
                    <input type="text" name="name" value="Ваше ім'я" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Ваше ім\'я';}" required="">
                    <input type="email" name="email" value="Email" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Email';}" required="">
                    <input type="text" name="phone" value="Номер телефону" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Номер телефону';}" required="">
                    <textarea name="message" onfocus="this.value = '';"
                              onblur="if (this.value == '') {this.value = 'Текст повідомлення...';}"
                              required="">Текст повідомлення...</textarea>
                    <input type="hidden" name="lang" value="ua">
                    <input type="submit" value="Надіслати повідомлення">

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

