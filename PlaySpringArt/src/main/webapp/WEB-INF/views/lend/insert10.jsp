<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/lend_insert11Pro.do">
날짜 : <input type="text" name="date" value="${date}">
시작시간 : <input type="text" name="start">
마감시간 :  <input type="text" name="end">
예약자 :  <input type="text" name="name">
<input type="submit" value="완료">
</form>
</body>
</html>