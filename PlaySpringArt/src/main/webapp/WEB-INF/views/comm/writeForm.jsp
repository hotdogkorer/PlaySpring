<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../top.jsp"%>
<!-- <script src="//cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script> -->
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
<!-- <script type="text/javascript" src="ckeditor/ckeditor.js"></script> -->
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
						<li>글 작성</li>
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
				<form method="post" name="writeform" action="<%=request.getContextPath()%>/comm_writePro.do"
					onsubmit="return writeSave();">

					<input type="hidden" name="num" value="${num}">
					<input type="hidden" name="ref" value="${ref}">
					<input type="hidden" name="re_step" value="${re_step}">
					<input type="hidden" name="re_level" value="${re_level}">
					<input type="hidden" name="email" value="${email}">
					<input type="hidden" name="writer" value="${writer}">



					<table class="table" cellspacing="0" cellpadding="0">

						<tr>
						<td>
							<label class="item" for="subject">제 목</label>
							
							<c:if test="${num==0}">
								<input type="text" name="subject" size=40 placeholder="게시글 제목을 입력하세요" id="subject" class="box_input"">
								</td>
							</c:if>
							<c:if test="${num!=0}">
								<input type="text" size="40" maxlength="50" name="subject" placeholder="답글 제목을 입력하세요">
								</td>
							</c:if>
						</tr>

						<tr>
							<td colspan="2">내 용</td>
						</tr>

						<tr>
							<td>
							<textarea name="content" id="editor1" cols="80"  rows="10" style ="visibility:visible">
							
							</textarea>
						        <script>
   								 CKEDITOR.replace( 'editor1', {
   								 } );
							</script>
							</td>
						</tr>

						<tr>
							<td colspan=2 bgcolor="#b0e0e6" align="center">
								<input type="button" value="목록" OnClick="window.location='<%=request.getContextPath()%>/comm_main.do'">
								<input type="submit" value="글쓰기">
								<input type="reset" value="다시작성">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
