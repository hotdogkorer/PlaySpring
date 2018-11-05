<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   	
<%@ include file="top.jsp"%> 
<script type="text/javascript">
 $(function(){
   $('body').addClass("elements-page");
 })
</script>

	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="entry-header">
						<h2 class="entry-title">비밀번호 찾기</h2>

						<ul class="breadcrumbs flex align-items-center">
							<li><a href="#">공간극장</a></li>
						</ul>
						<!-- .breadcrumbs -->
					</div>
					<!-- .entry-header -->
				</div>
				<!-- .col-12 -->
			</div>
			<!-- .row -->
		</div>
		<!-- .container -->
	</div>
	<!-- .page-header -->
	<div class="main-content">
		<div class="container">
			<div class="row elements-wrap">
				<div class="col-10 col-offset-2">
					<article class="container">
                       <center>
						<form class="form-horizontal" name="loginform" method="post"
							onsubmit="return logincheck()" action="<%=request.getContextPath()%>/passwordsearch.do">
							<input type="hidden" name="search" value="search">
							<p style="color:black">${msg}</p>
							<div class="form-group">
					<!-- 			<label for="inputEmail" class="col-sm-2 control-label">이메일</label> -->
								<div class="col-md-offset-2 col-md-5">
									<input type="email" class="form-control" name="email"
										id="inputEmail" size="10" maxlength="30" placeholder="이메일 입력하세요">
								</div>
							</div>
							<div class="form-group">
							<!-- 	<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label> -->
								<div class="col-md-offset-2 col-md-5">
									<input type="text" class="form-control" name="phone"
										id="inputPassword" maxlength="12" size="10" placeholder="휴대폰번호">
								</div>
							</div>

							<div class="form-group">
								<label for="inputName" class="col-sm-2 control-label"></label>
								<div class="col-sm-6">
								  <div class="entry-content flex">
									<button type="submit" class="btn gradient flex">비밀번호 찾기</button>
									<button type="button" class="btn gradient flex "
										onclick="javascript:history.back()">뒤로</button>
									
                                     </div>
								</div>
							</div>
						</form>
					</center>
					</article>
                     
				</div>
			</div>
		</div>
		<!-- container-->
	</div>
	
	<%@ include file="footer.jsp"%>