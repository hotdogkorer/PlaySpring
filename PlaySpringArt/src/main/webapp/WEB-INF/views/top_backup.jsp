<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>대학로 소극장</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./css/style.css" />
 <link rel="stylesheet" href="./css/play.css" />
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js" ></script>
   <script type="text/javascript" src="./js/memberInfo.js"></script>
  <script type="text/javascript" src="./js/calendar.js"></script>
 
</head>
<body>

<div class="container">
    <div class="jumbotron">
       <h1 class="text-center">대학로 소극장 </h1>
    </div>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand"  href="/Playbu/main.do">대학로 소극장 </a>
    </div>
 	    <ul class="nav navbar-nav">  

        <li><a href="/Playbu/perform.do">공연정보</a></li>
	      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            대관 서비스 
           <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">대관서비스1</a></li>
            <li><a href="#">대관서비스2</a></li>
          </ul>
        </li>
	      <li><a href="#">커뮤니티</a></li>
	      <li><a href="#">오시는길</a></li>
	    </ul>
	     <ul class="nav navbar-nav navbar-right">
	    <c:if test="${sessionScope.email== null }">
          <li><a href="/Playbu/login.do">로그인</a></li>
        <li><a href="/Playbu/memberInfo.do">회원가입</a></li>
        </c:if>
         <c:if test="${sessionScope.email != null }">
          <li><a href="/Playbu/logout.do">로그아웃</a></li>
        <li><a href="/Playbu/mypage.do">마이페이지</a></li>
        </c:if>
      </ul>
  </div>
</nav>