<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
   //response.sendRedirect("JspBoard2/list.do");
%>
<script type="text/javascript">
	alert("게시글 작성을 완료하였습니다.")
</script>
<meta http-equiv="Refresh" content="0;url=<%=request.getContextPath()%>/comm_main.do">