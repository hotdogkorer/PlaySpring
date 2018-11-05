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
	padding-top: 80px;
}
</style>
<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="entry-header">
					<h2 class="entry-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 공간 안내</h2>
				</div>
			</div>
		</div>
	</div>
	
	<div class="main-content">
		<div class="container">
			<div class="col-md-2" style="color:black">
				<%@ include file="lend_menu.jsp"%>
			</div>

			<div class="col-md-10" style="color:black"> 
				<jsp:include page="contacts.jsp" flush="false" />				
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>