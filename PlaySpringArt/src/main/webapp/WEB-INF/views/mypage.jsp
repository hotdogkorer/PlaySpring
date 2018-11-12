<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="top.jsp"%>  
<script type="text/javascript">
 $(function(){
   $('body').addClass("elements-page");
 })
</script>
<script>
function meminfo(){
  var pw=$("#passwd").val();
   
   if(pw==''||pw==null){
	  alert("패스워드를 입력하세요");
	  return false;
   }
  $('#info').attr('action' ,'mypage.do').submit(); 
}
</script>


	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="entry-header">
						<h2 class="entry-title">마이페이지</h2>

						<ul class="breadcrumbs flex align-items-center">
							<li><a href="#">마이페이지</a></li>
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
	<div class="container">
<div class="row">
<div class="col-md-2">
  <table class="table">
    <tr>
      <td class="text-center"><a href="<%=request.getContextPath()%>/mypage.do">회원정보</a></td>
    </tr>
    <tr>
      <td class="text-center"><a href="<%=request.getContextPath()%>/reservacheck.do">예매확인</a></td>
    </tr>
    <tr>
      <td class="text-center"><a href="<%=request.getContextPath()%>/mypassword.do">비밀정보 변경</a></td>
    </tr>
    <tr>
      <td class="text-center"><a href="<%=request.getContextPath()%>/memberbreak.do">회원탈퇴</a></td>
    </tr>
   </table>
</div>
<div class="col-md-4 col-md-offset-3">
       <form role="form" method="post" action="#" id="info" onsubmit="return meminfo()">
       <input type="hidden" name=info value="info">
       <c:if test="${msg!=null}">
          <p style="color:red;">${msg}</p>
		</c:if>
      <table class="table" style="color:black;">
           <tr>
           <td>이메일</td>
            <td>${member.email}</td>
           </tr>
            <tr>
           <td>이름</td>
            <td><input type="text" id="name"  name="name" value="${member.name}"></td>
           </tr>
            <tr>
           <td>닉네임</td>
            <td><input type="text" id="nickname"  name="nickname" value="${member.nickname}"></td>
           </tr>
           <tr>
            <td>휴대폰번호</td>
            <td><input type="text" id="phonenum" name="phonenum"value="${member.phonenum}"></td>
           </tr>
            <tr>
           	 <td>생년월일</td>
             <td><input type="text" id="birthdate" name="birthdate" value="${member.birthdate}"></td>
           </tr>    
            <tr>
           	 <td>비밀번호</td>
             <td><input type="password" id ="passwd"name ="passwd"></td>
           </tr>    
        </table>
          <center>
            <input type="submit" class="btn btn-primary" value="회원정보수정">
          </center>
        </form>
        <br><br>
</div>
  </div>
</div>
<%@ include file="footer.jsp"%>  
