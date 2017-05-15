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
                                <li class="active read hvr-shutter-in-horizontal" data-toggle="modal"
                                    data-target="#myModal1"><a data-hover="Order" href="#">Order</a></li>
                                <li><a class="scroll" data-hover="Home" href="#about">Home</a></li>
                                <li><a class="scroll" data-hover="Services" href="#services">Services</a></li>
                                <li><a class="scroll" data-hover="Blogs" href="#blogs">Blogs</a></li>
                                <li><a class="scroll" data-hover="Contacts" href="#contact">Contacts</a></li>
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
                    <h1>Hello !</h1>
                    <a href="#" data-toggle="modal" data-target="#myModal1"><h6>Order a site</h6></a>
                    <ul class="address">

                        <li>
                            <ul class="address-text">
                                <li><b>WE CREATE </b></li>
                                <li>Sites suited to every fancy.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>PRICE </b></li>
                                <li>We will find a suitable variant for you.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>STYLE </b></li>
                                <li>We will grant all your wishes.</li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>HELP </b></li>
                                <li>We will provide completely input.</li>
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
                    <h2>A path to success!!!<span></span></h2>
                    <p>We will create a site for you, which will provide your business with Internet audience.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Order</a>
                        </li>
                        <li><a class="a-btn-h scroll" href="#contact">Ask us</a></li>
                    </ul>
                </div>
            </div>
            <div class="item">
                <div class="about-left-grid">
                    <h2>The best site<span></span></h2>
                    <p>We will bring to life any client’s wishes.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Order</a>
                        </li>
                        <li><a class="a-btn-h scroll" href="#contact">Ask us</a></li>
                    </ul>
                </div>
            </div>
            <div class="item">
                <div class="about-left-grid">
                    <h2>High income<span></span></h2>
                    <p>Your site will guarantee an increase of huge amount of customers from all over the world.</p>
                    <ul>
                        <li><a class="a-btn-a scroll" href="#" data-toggle="modal" data-target="#myModal1">Order</a>
                        </li>
                        <li><a class="a-btn-h scroll" href="#contact">Ask us</a></li>
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
            <h4>Our occupation ?</h4>
            <h3>Our <span>SERVICES</span></h3>
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
                    <h4>Website card</h4>
                    <p>To introduce your own information in the Internet you need a website card.<br><br>
                        It is a small site, which consists of several pages meant for the supplying of information about
                        one person.</p>
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
                    <h4>Blog</h4>
                    <p>Every blogger will have his own site.<br><br>
                        Blog is a site meant for the news publication about certain themes.<br><br>
                        Such site must consist of two parts: the user's and the blogger’s.<br><br>
                        The user’s part allows a customer to enjoy the completeness of the content represented in your
                        blog, and the blogger’s part is meant for the addition, editing or removal of the content.</p>
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
                    <h4>Online shop</h4>
                    <p>What commerce can exist without an online shop.<br><br>
                        An online shop is a big site, which consists of a great amount of pages and a complicated
                        server-side.<br><br>
                        We have absolutely custom solutions, which will attract great number of clientage for your
                        business.</p>
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
                    <h4>Corporate site</h4>
                    <p>This is a site aimed at presentation of information about enterprises and corporations in the
                        Internet.<br><br>
                        A corporate site can contain many parts meant for: work with a client, employment, services
                        description, contact details…</p>
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
            <h4>What do we write about ?</h4>
            <h3>Our <span>BLOGS</span></h3>
            <span class="border one"></span>
        </div>
        <div class="news-grid w3l-agile">
            <div class="col-md-6 news-img">
                <a href="#" data-toggle="modal" data-target="#myModal1"> <img src="/images/original.jpg" alt=" "
                                                                              class="img-responsive"></a>

            </div>
            <div class="col-md-6 news-text">
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Originality</a></h3>
                <p>We offer you to create not a template, but unique site for you. <br>
                    Your site will differ profitably from the monotony, popular in the Internet.<br>
                    In the capacity of the site’s designer, a professional artist will work with you; he will be able to
                    emphasize the uniqueness and individuality of your ideas.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ORDER A
                    SITE</a>

            </div>

            <div class="clearfix"></div>
        </div>
        <div class="news-grid">

            <div class="col-md-6 news-text two">
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Adaptibility</a></h3>
                <p>We create sites, which will be seen on the displays with any resolution, on tablets, smartphones and
                    even mobile phones.<br>
                    Depending on the size of your device’s screen, your site will change its linking for better
                    presentation of information.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ORDER A
                    SITE</a>

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
                <h3><a href="#" data-toggle="modal" data-target="#myModal1">Cross-Browser</a></h3>
                <p>Different Internet browsers show the webpages in their own ways, but we will make all the famous
                    browsers go identically. <br> Your site will always run properly.</p>
                <a href="#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">ORDER A
                    SITE</a>

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
                            <input type="text" name="name" value="Your name" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Your name';}" required="">
                            <input type="email" name="email" value="Email" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Email';}" required="">
                            <input type="text" name="phone" value="Phone number" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Phone number';}" required="">
                            <textarea name="message" onfocus="this.value = '';"
                                      onblur="if (this.value == '') {this.value = 'Short description...';}"
                                      required="">Short description...</textarea>
                            <input type="hidden" name="lang" value="en">
                            <p>* If you didn’t get an automatic confirmation letter, check "junk email folder".</p>
                            <input type="submit" value="Send order">
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
            <h4>HOW TO CONTACT ?</h4>
            <h3>Our <span>CONTACTS</span></h3>
            <span class="border two"></span>
        </div>
        <div class="mail_us">
            <div class="col-md-6 mail_left">
                <div class="contact-grid1-left">
                    <div class="contact-grid1-left1">
                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        <h4>E-mail</h4>
                        <ul>
                            <li>E-mail: <a href="mailto:artem.khirgii@gmail.com">artem.khirgii@gmail.com</a></li>

                        </ul>
                    </div>
                </div>
                <div class="contact-grid1-left">
                    <div class="contact-grid1-left1">
                        <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                        <h4>Telephone</h4>
                        <ul>
                            <li>Phone: <a href="tel:+380979468925">+38 097 946 89 25</a></li>
                        </ul>
                    </div>
                </div>
                <div class="contact-grid1-left">
                    <div class="contact-grid1-left1">
                        <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
                        <h4>Our site</h4>
                        <ul>
                            <li><a href="http://success-site.inf.ua">success-site.inf.ua</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-6 mail_right">
                <form action="/question" method="post">
                    <input type="text" name="name" value="Your name" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Your name';}" required="">
                    <input type="email" name="email" value="Email" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Email';}" required="">
                    <input type="text" name="phone" value="Phone number" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Phone number';}" required="">
                    <textarea name="message" onfocus="this.value = '';"
                              onblur="if (this.value == '') {this.value = 'Text of your message...';}"
                              required="">Text of your message...</textarea>
                    <input type="hidden" name="lang" value="en">
                    <input type="submit" value="Send message">

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

