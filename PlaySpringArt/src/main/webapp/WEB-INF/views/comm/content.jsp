<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../top.jsp"%>
<c:if test="${sessionScope.email== null }">
   <script type="text/javascript">
		alert('로그인 후 이용가능합니다.');
		location.href="<%=request.getContextPath()%>/login.do";
	</script>
 </c:if>   
<script type="text/javascript">
	 $(function() {
		$('body').addClass("elements-page");
	}) 
</script>
<style>
.main-content {
	padding-top: 80px
}
td{
	font-color:black
}
</style>

<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="entry-header">
					<h2 class="entry-title">자유게시판</h2>

					<ul class="breadcrumbs flex align-items-center">
						<li><a href="#">공간극장</a></li>
					</ul>
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
				<%@ include file="comm_menu.jsp"%>
			</div>
				
			<div class="col-md-10" style="color:black">
				<jsp:include page="contentForm.jsp" />
			<%-- <table class="table" width="500" cellspacing="0" cellpadding="0">
			<tr>
			<td width="375" align="left" colspan="3">${comm.subject}</td>
			<td width="125" align="left" colspan="2">${comm.reg_date}</td>
			<c:if test="${sessionScope.email==comm.email}">
			<td><input type="button" value="답글쓰기" onclick="document.location.href='<%=request.getContextPath()%>/comm_writeForm.do?num=${comm.num}&ref=${comm.ref}&re_step=${comm.re_step}&re_level=${comm.re_level}&pageNum=${pageNum}'"></td>
	  		<td><input type="button" value="글수정" onclick="document.location.href='<%=request.getContextPath()%>/comm_updateForm.do?num=${comm.num}&pageNum=${pageNum}&email=${comm.email}'"></td>
	  		<td><input type="button" value="글삭제" onclick="document.location.href='<%=request.getContextPath()%>/comm_deleteForm.do?num=${comm.num}&pageNum=${pageNum}&email=${comm.email}'"></td>
       		</c:if>
			</tr>
			<tr>
			<td>${comm.writer}</td>
			</tr>
			</table>
			<pre>${comm.content}</pre> --%>
			</div>

		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
