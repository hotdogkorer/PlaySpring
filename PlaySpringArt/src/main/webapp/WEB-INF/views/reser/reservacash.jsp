<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../top.jsp"%> 

<c:if test="${sessionScope.email== null }">
   <script type="text/javascript">
		alert('로그인 후 이용가능합니다.');
		location.href="/Playbu/login.do";
	</script>
</c:if>   
 
<script type="text/javascript">
 $(function(){
   $('body').addClass("tickets-page");
 })
</script>
<div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">예약내용 확인</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li>공연예매>예매정보</li>
                            
                        </ul><!-- .breadcrumbs -->
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>
 <div class="main-content">
        <div class="container">
          <form role="form" method="post" action="reservationPro.do">
	          <input type="hidden" name="email" value="${email}"> 
	          <input type="hidden" name="sit"     value="${sit}">
	          <input type="hidden" name="count" value="${count}">
	          <input type="hidden" name="pronum" value="${pronum}">
	          <input type="hidden" name="price"  value="${product.price}">          
	          <table class="table" style="color:black; border:1px solid black; text-align:center">
	          <thead>
		            <tr>
		               <td>에약자이메일</td>
		               <td>예매수 </td>
		               <td>예약좌석 </td>
		               <td> 가격 </td>
		            </tr>
		         </thead>
		             <tr>
		               <td>${email}</td>
		               <td>${count}</td>
		               <td>${sit}</td>
		               <td>합계${product.price*count}원 </td>
		             </tr>
	          </table>
	          <center>
	          <input type="submit" value="예약하기" class="btn btn-primary">
	           <a href="perform.do" class="btn btn-primary">다른공연 예매하기</a>
	          </center>
           </form>
        </div>
 </div>   
<%@ include file="../footer.jsp"%>   