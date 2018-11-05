<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../top.jsp"%>  
<script type="text/javascript">
 $(function(){
   $('body').addClass("elements-page");
 })
</script>
<script>
function cancell(num){
	
	var can=confirm("에약을 취소 하겠습니까?")
     if(can==false){
    	 
    	return false;
    
     }else{
       	location.href="reservalDel.do?num="+num;  
       	
     }
	
	
} 
</script>
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="entry-header">
						<h2 class="entry-title">예매확인</h2>

						<ul class="breadcrumbs flex align-items-center">
							<li><a href="#">예매확인</a></li>
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
<div class="col-md-9">
       
      <table class="table" border="1" style="color:black;">
         <tr>
           <td>이름</td>
           <td>이메일</td>
           <td>공연명</td>
           <td>좌석위치</td>
           <td>예매취소 </td>
         </tr>
       <c:forEach  var="plist"  items="${list}">
         <tr>
           <td>${plist.res_name} </td>
           <td>${plist.res_email} </td>
           <td>${plist.productname} </td>
           <td>${plist.sitnum} </td>
            <td><a href="javascript:cancell(${plist.res_num})" class="btn btn-primary">예매취소 </a></td>
         </tr>
         </c:forEach>
       </table>  
</div>
  
</div>
<%@ include file="../footer.jsp"%>  
