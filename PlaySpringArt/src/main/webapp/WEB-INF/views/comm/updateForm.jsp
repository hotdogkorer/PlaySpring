<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../top.jsp"%>
<script src="//cdn.ckeditor.com/4.10.1/full/ckeditor.js"></script>
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
	if(document.writeform.writer.value==""){
	  alert("작성자를 입력하십시요.");
	  document.writeform.writer.focus();
	  return false;
	}
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
				<form method="post" name="writeform" action="<%=request.getContextPath() %>/comm_updatePro.do"
					onsubmit="return writeSave()">
					<input type="hidden" name="num" value="${comm.num}">
					<input type="hidden" name="pageNum" value="${pageNum}">

					<table class="table" cellspacing="0" cellpadding="0">
						<tr>
							<td>
							<label class="item" for="subject">제 목</label>
							<input type="text" name="subject" size=40 value="${comm.subject}" id="subject" class="box_input""></td>
						</tr>
						<tr>
							<td align="left" width="330">
							<textarea name="content" id="editor1" rows="10" cols="80">${comm.content}</textarea>
						 <script>
   								 CKEDITOR.replace( 'editor1', {
   								 } );
						</script>			
						</td>
						</tr>

						<tr>
							<td colspan=2 bgcolor="#b0e0e6" align="center">
							<input type="submit" value="글수정"> 
							<input type="reset" value="다시작성">
							<input type="button" value="목록보기" onclick="document.location.href='<%=request.getContextPath()%>/comm_main.do?pageNum=${pageNum}'">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
