<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공연삭제 하기</title>
</head>
<script type="text/javascript">
	function onform(){
		console.log("perform")
		location.href="perform.do";	
	}
</script>

<body>

<center>
<h1> 공연삭제 하기 </h1>
<form method="post" action="performdelete.do">
	<input type="hidden" name="pronum" value="${pronum}">
    <input type="submit" value="공연삭제 하기"> 
     <input type="button" onclick="onform()" value="공연목록보기"> 
</form>
</center>
</body>
</html>