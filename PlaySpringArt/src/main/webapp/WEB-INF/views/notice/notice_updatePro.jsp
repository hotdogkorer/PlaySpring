<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script>
	alert("수정이 완료되었습니다.")
</script>

<meta http-equiv="Refresh" content="0;url=<%=request.getContextPath() %>/notice_main.do?pageNum=${pageNum}">

