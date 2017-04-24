<?xml version="1.0" encoding="utf-8"?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%--<!DOCTYPE html>--%>

<html lang="ua">
<head>
    <title>Success-site</title>
    <link rel="shortcut icon" href="/images/ico.ico" type="image/ico">
    <!-- Custom Theme files -->
    <link href="/css/style-login.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Preface Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design"/>
    <!-- webfonts -->
    <link href='//fonts.googleapis.com/css?family=Asap:400,700,400italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>

</head><!--/head-->

<body>
<header><!--header-->
    <div class="logo">
        <h1><a href="/"><span>S</span>Success-Site</a></h1>
    </div>
</header><!--/header-->

<section><!--form-->
    <div class="container">
        <div class="login-form"><!--login form-->
            <center>
                <c:if test="${not empty data_error}">
                    <h2 class="err">Активація поштової адреси НЕ&nbsp;ВИКОНАНА</h2>
                </c:if>
                <c:if test="${empty data_error}">
                    <h2 class="not_err">Активація поштової адреси ВИКОНАНА</h2>
                </c:if>
            </center>
        </div><!--/login form-->
    </div>
</section><!--/form-->

</body>
</html>