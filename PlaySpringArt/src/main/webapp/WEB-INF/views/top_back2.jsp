<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>공간극장</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/fontawesome-all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
     <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js" ></script>
      
<script type="text/javascript" src="js/memberInfo.js"></script>
    
</head>
<body onload="initialize()">
    <header class="site-header">
        <div class="header-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-10 col-lg-4">
                        <h1 class="site-branding flex">
                            <a href="/Playbu/main.do">공간극장</a>
                        </h1>
                    </div>

                    <div class="col-2 col-lg-8">
                        <nav class="site-navigation">
                            <div class="hamburger-menu d-lg-none">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div><!-- .hamburger-menu -->

                            <ul>
                                <li><a href="/Playbu/perform.do">공연정보</a></li>
                                <li><a href="#">대관안내</a></li>
                                <li><a href="/Playbu/cm_main.do">커뮤니티 </a></li>
                                <li><a href="#">오시는길</a></li>
                             <c:if test="${sessionScope.email== null }">
         						 <li><a href="/Playbu/login.do">로그인</a></li>
        						<li><a href="/Playbu/memberInfo.do">회원가입</a></li>
     						   </c:if>
         						<c:if test="${sessionScope.email != null }">
          						<li><a href="/Playbu/logout.do">로그아웃</a></li>
        						<li><a href="/Playbu/mypage.do">마이페이지</a></li>
        						</c:if>
                                <li><a href="#"></a></li> 
                            </ul><!-- flex -->
                        </nav><!-- .site-navigation -->
                    </div><!-- .col-12 -->
                </div><!-- .row -->
            </div><!-- container-fluid -->
        </div><!-- header-bar -->
    </header><!-- .site-header -->

    