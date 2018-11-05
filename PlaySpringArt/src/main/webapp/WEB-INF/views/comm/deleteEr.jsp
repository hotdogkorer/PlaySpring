<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:if test="${check==1}">
	<meta http-equiv="Refresh" content="0;url=/Playbu/cm_main.do?pageNum=${pageNum}">
</c:if>
<c:out value="${check}" />
<c:if test="${check==0}">
	<script>
	alert("비밀번호가 맞지 않습니다. \n 다시 확인해주세요")
	history.go(-1)
	</script>
</c:if>