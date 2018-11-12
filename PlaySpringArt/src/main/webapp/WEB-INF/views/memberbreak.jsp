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
  $('#info').attr('action' ,'memberbreak.do').submit(); 
}
</script>


	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="entry-header">
						<h2 class="entry-title">회원탈퇴</h2>

						<ul class="breadcrumbs flex align-items-center">
							<li><a href="#">회원탈퇴</a></li>
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
      <td class="text-center"><a href="mypage.do">회원정보</a></td>
    </tr>
    <tr>
      <td class="text-center"><a href="reservacheck.do">예매확인</a></td>
    </tr>
    <tr>
      <td class="text-center"><a href="mypassword.do">비밀정보 변경</a></td>
    </tr>
    <tr>
      <td class="text-center"><a href="memberbreak.do">회원탈퇴</a></td>
    </tr>
   </table>
</div>
<div class="col-md-4 col-md-offset-3">
       <form role="form" method="post" action="#" id="info" onsubmit="return meminfo()">
       <input type="hidden" name="break" value="break">
       <c:if test="${msg!=null}">
          <p style="color:red;">${msg}</p>
		</c:if>
      <table class="table" style="color:black;">
           <tr>
           <td>이메일</td>
            <td>${email}</td>
           </tr>   
            <tr>
           	 <td>비밀번호</td>
             <td><input type="password" id ="passwd"name ="passwd"></td>
           </tr>    
        </table>
          <center>
            <input type="submit" class="btn btn-primary" value="회원탈퇴">
          </center>
        </form>
</div>
  </div>
</div>
<%@ include file="footer.jsp"%>  
