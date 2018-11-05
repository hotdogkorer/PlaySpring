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
				<%@ include file="../table_col2.jsp"%>
			</div>
				
			<div class="col-md-10" style="color:black">
				<form method="post" action="notice_deletePro.do">
					<center>정말 삭제하시겠습니까?</center>
					<center>
					<input type="submit" value="예">
					<%-- <input type="text" name="email" value="${email}"> --%>
					<input type="hidden" name="num" value="${num}">
					<input type="hidden" name="pageNum" value="${pageNum}">
					<input type="button" value="아니요" onclick="history.back()"></center>
				</form>
			</div>

		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
