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
	padding-top: 80px;
}
</style>
<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="entry-header">
					<h2 class="entry-title">공간 안내</h2>
				</div>
			</div>
		</div>
	</div>	
	<div class="main-content">
		<div class="container">
			<div class="col-md-2" style="color:black">
				<%@ include file="lend_menu.jsp"%>
			</div>

			<div class="col-md-10"  style="color:black"> 
			<!-- <img src="https://www.artgori.or.kr:40019/images/content01/about_2_3_1.gif" alt="공간소개"> -->
		
			
			<jsp:include page="mainForm.jsp" flush="false" />


			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>