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
<script language="JavaScript">
function writeSave(){
	if(document.writeform.subject.value==""){
	  alert("제목을 입력하십시요.");
	  document.writeform.subject.focus();
	  return false;
	}
	if(document.writeform.content.value==""){
	  alert("내용을 입력하십시요.");
	  document.writeform.content.focus();
	  return false;
	}
 }
</script>
<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="entry-header">
					<h2 class="entry-title">자유게시판</h2>

					<ul class="breadcrumbs flex align-items-center">
						<li>글 수정</li>
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
				<form method="post" name="writeform" action="<%=request.getContextPath() %>/notice_updatePro.do" onsubmit="return writeSave()">
					
					<input type="hidden" name="num" value="${num}"> 
					<input type="hidden" name="pageNum" value="${pageNum}">

					<table class="table" cellspacing="0" cellpadding="0">

						<tr>
							<td>
							<label class="item" for="subject">제 목</label>
							<input type="text" name="subject" value="${noti.subject}" id="subject" class="box_input""></td>
						</tr>

						<tr>
							<td width="70" bgcolor="#b0e0e6" align="center">내 용</td>
							<td align="left" width="330"><textarea name="content"	rows="13" cols="40">${noti.content}</textarea></td>
						</tr>

						<tr>
							<td colspan=2 bgcolor="#b0e0e6" align="center">
							<input type="submit" value="글수정">
							<input type="reset" value="다시작성">
							<input type="button" value="목록보기" onclick="document.location.href='<%=request.getContextPath() %>/notice_main.do?pageNum=${pageNum}'">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
