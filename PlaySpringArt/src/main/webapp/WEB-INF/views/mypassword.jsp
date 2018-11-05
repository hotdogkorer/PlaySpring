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
function password(){
  var pw=$("#password").val();
  var newpw=$("#newpasswd").val();  
  var newpw2 =$("#newpasswd2").val();


   if(pw==''||pw==null || newpw=='' || newpw2==''){
	  alert("패스워드를 입력하세요");
	  return false;
   }
   
   if(newpw!=newpw2){
	   alert("패스워드가 일치 하지 않습니다");
	   return false;
   }
   
   
   var pattern1 = /[0-9]/;
   var pattern2 = /[a-zA-Z]/;
   var pattern3 = /[~!@\#$%<>^&*]/;   
   if(!pattern1.test(newpw)||!pattern2.test(newpw)||!pattern3.test(newpw)||newpw.length<8){
       alert("비밀번호 는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
       return false;
   }        
  $('#passwd').attr('action' ,'mypassword.do').submit(); 
}
</script>


	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="entry-header">
						<h2 class="entry-title">비밀번호 변경</h2>

						<ul class="breadcrumbs flex align-items-center">
							<li><a href="#">비밀번호 변경</a></li>
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
<div class="row">
<div class="col-md-3">
  <table class="table" border="1">
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
<div class="col-md-9">
       <form role="form" method="post" id="passwd" >
       <input type="hidden" name=info value="info">
       <c:if test="${msg!=null}">
          <p style="color:red;">${msg}</p>
		</c:if>
      <table class="table" border="1" style="color:black;">
            <tr>
           <td>예전 비밀번호 </td>
            <td><input type="password" id="password"  name="password" ></td>
           </tr>
            <tr>
           <td>새 비밀번호 입력</td>
            <td><input type="password" id="newpasswd"  name="newpasswd" ></td>
           </tr>
           <tr>
            <td>새비밀번호 재입력</td>
            <td><input type="password" id="newpasswd2" name="newpasswd2"></td>
           </tr>   
        </table>
          <center>
            <a href="javascript:password()" class="btn btn-primary" >비밀번호변경 </a>
          </center>
        </form>
</div>
  
</div>
<%@ include file="footer.jsp"%>  
