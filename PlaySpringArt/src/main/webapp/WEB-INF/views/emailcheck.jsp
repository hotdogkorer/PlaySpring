<?xml version="1.0" encoding="UTF-8" ?>

<%@page import="com.play.member.dao.MemberDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<% 
   request.setCharacterEncoding("UTF-8");
   String email=request.getParameter("email");
   System.out.println("emailcheck.jsp 검사할 아이디"+email);
   
   MemberDAOImpl mdao = new MemberDAOImpl();
   boolean check=mdao.emailcheck(email);
   
  // MemberDAO  mempro = new MemberDAO();
  // boolean check=mempro.emailcheck(email); 
    
  if(check){
  %>
 <font color ="red">사용 중인 이메일 입니다</font>
<%}else{ %>
<font color ="blue">사용 가능한 이메일 입니다</font>
<%} %>
</body>
</html>