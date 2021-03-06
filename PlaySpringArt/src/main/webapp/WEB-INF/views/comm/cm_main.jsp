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
					<h2 class="entry-title">자유게시판</h2>

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
				<%@ include file="comm_menu.jsp"%>
			</div>

			<div class="col-md-10" style="color:black"> 

				<c:if test="${pgList.count==0}">
					<table>
						<!-- border="1" width="700" cellpadding="0" align="center" -->
						<tr>
							<td align="center">게시판에 저자된 글이 없습니다.</td>
						</tr>
					</table>
				</c:if>

							
				<c:if test="${pgList.count>0}">
					<table class="table">
						<tr>
							<!-- height="30" bgcolor="#b0e0e6" -->
							<td align="center" width="50">번 호</td>
							<td align="center" width="250">제 목</td>
							<td align="center" width="100">닉네임</td>
							<td align="center" width="150">작성일</td>
							<td align="center" width="50">조회수</td>
						</tr>

						<c:set var="number" value="${pgList.number}" />
						<c:forEach var="article" items="${articleList}">

							<tr height="30" onmouseover="this.style.backgroundColor='white'"
								onmouseout="this.style.backgroundColor='#e0ffff'">

								<!-- 하나씩 감소하면서 출력하는 게시물번호 -->
								<td align="center">
									<c:out value="${number}" />
									<c:set var="number" value="${number-1}" />
								</td>

								<td width="250">
									<!-- 답변글인 경우 이미지를 부착 -->
									<c:if test="${article.re_level>0}">
										<span margin-left="${7*article.re_level}">[답글]</span>
									</c:if>
									
									<a href="<%=request.getContextPath()%>/comm_content.do?num=${article.num}&pageNum=${pgList.currentPage}">
										${article.subject}
									</a>
								</td>

								<td align="center" width="100"><a href="${article.writer}">${article.writer}</a>
								</td>

								<td align="center" width="150"><fmt:formatDate
										value="${article.reg_date}" timeStyle="medium"
										pattern="yy-MM-dd (hh:mm)" /></td>

								<td align="center" width="50">${article.readcount}</td>
								
							</tr>
						</c:forEach>
					</table>
				</c:if>
				<center>
					<c:if test="${pgList.startPage>pgList.blockSize}">
						<a
							href="<%=request.getContextPath() %>/comm_main.do?pageNum=${pgList.startPage-pgList.blockSize}&search=${search}&searchtext=${searchtext}">
							[이전] </a>
					</c:if>

					<c:forEach var="i" begin="${pgList.startPage}"
						end="${pgList.endPage}">
						<a
							href="<%=request.getContextPath() %>/comm_main.do?pageNum=${i}&search=${search}&searchtext=${searchtext}">
							<c:if test="${pgList.currentPage==i}">
								<font color="blue"><b>[${i}]</b></font>
							</c:if> <c:if test="${pgList.currentPage!=i}">
								[${i}]
							</c:if>
						</a>
					</c:forEach>

					<c:if test="${pgList.endPage<pgList.pageCount}">
						<a
							href="<%=request.getContextPath() %>/comm_main.do?pageNum=${pgList.startPage+pgList.blockSize}&search=${search}&searchtext=${searchtext}">
							[다음]</a>
					</c:if>

					<p>

						<!-- 검색어추가(자주 검색이되는 항목을 잘 선택) -->
					<form name="test" action="<%=request.getContextPath() %>/comm_main.do">
						<select name="search">
							<option value="subject">제목</option>
							<option value="subject_content">제목+내용</option>
							<option value="writer">작성자</option>
						</select> <input type="text" size="15" name="searchtext">&nbsp; <input
							type="submit" value="검색">
						
						
						<c:if test="${sessionScope.email!=null }">
							<a href="<%=request.getContextPath()%>/comm_writeForm.do">글쓰기</a>
						</c:if>

					</form>
				</center>
			</div>

		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
