<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../top.jsp"%>
<script type="text/javascript">
	 $(function() {
		$('body').addClass("elements-page");
	}) 
</script>
<style>
.main-content {
	padding-top: 80px
}
</style>

<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="entry-header">
					<h2 class="entry-title">공지 게시판</h2>

					<!-- <ul class="breadcrumbs flex align-items-center">
						<li><a href="#">공간극장</a></li>
					</ul> -->
					<!-- .breadcrumbs -->
				</div>
				<!-- .entry-header -->
			</div>
			<!-- .col-12 -->
		</div>
	</div>
	<div class="main-content">
		<div class="container">
			<div class="col-md-2" style="color:black">
				<%@ include file="../table_col2.jsp"%>
			</div>
				
			<div class="col-md-10" style="color:black">
			<table class="table" width="500" cellspacing="0" cellpadding="0">
			<tr>
			<td width="375" align="left" colspan="3">${noti.subject}</td>
			<td width="125" align="left" colspan="2">${noti.reg_date}</td>
			<c:if test="${sessionScope.email==noti.email}">
	  		<td><input type="button" value="글수정" 
       		onclick="document.location.href='<%=request.getContextPath()%>/notice_updateForm.do?num=${noti.num}&pageNum=${pageNum}&email=${noti.email}'"></td>
	  		<td><input type="button" value="글삭제" 
       		onclick="document.location.href='<%=request.getContextPath()%>/notice_deleteForm.do?num=${noti.num}&pageNum=${pageNum}&email=${noti.email}'"></td>
       		</c:if>
			</tr>
			<tr>
			<td>${noti.writer}</td>
			</tr>
			</table>
			<pre>${noti.content}</pre>
			</div>

		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
