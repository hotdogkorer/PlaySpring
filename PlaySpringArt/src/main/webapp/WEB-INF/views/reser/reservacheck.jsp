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
<div class="col-md-10">
       
      <table class="table" style="color:black;">
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
        
    <center>
  <nav aria-label="Page navigation">
  <ul class="pagination">
  <c:if test="${pgList.startPage > pgList.blockSize}">
    <li class="page-item"><a class="page-link" href="<%=request.getContextPath() %>/reservacheck.do?pageNum=${pgList.startPage-pgList.blockSize}">[이전]</a></li>   
 </c:if>
 
 <c:forEach var="i"  begin="${pgList.startPage}" end="${pgList.endPage}">
    <li class="page-item"> <a class="page-link"href="<%=request.getContextPath() %>/reservacheck.do?pageNum=${i}">
        <c:if test="${pgList.currentPage==i}"> 
             <font color="red"><b>${i}</b></font>
         </c:if>
         <c:if test="${pgList.currentPage!=i}"> 
                 ${i}
         </c:if>
     </a></li>
 </c:forEach>
 
 <c:if test="${pgList.endPage < pgList.pageCount}">
   <li class="page-item">  <a  class="page-link" href="<%=request.getContextPath() %>/reservacheck.do?pageNum=${pgList.startPage+pgList.blockSize}">[다음]</a>   </li>
 </c:if>
  </ul>
  </nav>
  </center>	
       
         <%-- 	<center>
         	<ul class="pagination">
    				<li class="page-item disabled">
					<c:if test="${pgList.startPage>pgList.blockSize}">
						<a
							href="<%=request.getContextPath() %>/reservacheck.do?pageNum=${pgList.startPage-pgList.blockSize}">
							[이전] </a>
					</c:if>

					<c:forEach var="i" begin="${pgList.startPage}"
						end="${pgList.endPage}">
						<a
							href="<%=request.getContextPath() %>/reservacheck.do?pageNum=${i}">
							<c:if test="${pgList.currentPage==i}">
								<font color="blue"><b>[${i}]</b></font>
							</c:if> <c:if test="${pgList.currentPage!=i}">
								[${i}]
							</c:if>
						</a>
					</c:forEach>

					<c:if test="${pgList.endPage<pgList.pageCount}">
						<a
							href="<%=request.getContextPath() %>/reservacheck.do?pageNum=${pgList.startPage+pgList.blockSize}">
							[다음]</a>
					</c:if>

					<p>			
						
					</form>
					</li>
					</ul>
				</center> --%>
	

	</div>
  </div>

</div>
<%@ include file="../footer.jsp"%>  
