<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ include file="top.jsp"%>  
 
<div class="container-fluid">
<div class="row">
  
  <!-- <div class="col-sm-4 col-md-4">
    <div class="thumbnail">
      <img src="./img/10_ma_28.png" alt="마리로랑셍" width="400px" height="400px">
      <div class="caption">
        <h3>마리 로랑셍 </h3>
        <p>공연정보 </p>

      </div>
    </div>
  </div>
  <div class="col-sm-4 col-md-4">
    <div class="thumbnail">
      <img src="./img/15_ma_39.png" alt="레미제라블" width="400px" height="400px">
      <div class="caption">
        <h3>레미제라블 </h3>
        <p>공연정보</p>
     
      </div>
    </div>
  </div> -->
  <c:forEach  var="perform"  items="${proList}">	
  <div class="col-sm-4 col-md-4">
    <div class="thumbnail col-sm-12 col-md-12">
    <a href="/Playbu/performInfo.do?product_id=${perform.product_id}">
    <img src="/Playbu/upload/${perform.filename}" alt="" width="400px" height="400px"></a>
      <div class="caption text-center">
        <h3>${perform.product_name}</h3>
        <h4>공연일 <fmt:formatDate value="${perform.pro_day}"
                timeStyle="medium" pattern="yyyy.MM.dd" /></h4>
    
      </div>
    </div>
  </div>
   </c:forEach>
 </div>

 <ul class="pager">
  <c:if test="${pgList.startPage > pgList.blockSize}">
    <li class="page-item"><a class="page-link" href="/Playbu/main.do?pageNum=${pgList.startPage-pgList.blockSize}">[이전]</a></li>   
 </c:if>
 
 <c:forEach var="i"  begin="${pgList.startPage}" end="${pgList.endPage}">
    <li class="page-item"> <a class="page-link"href="/Playbu/main.do?pageNum=${i}">
        <c:if test="${pgList.currentPage==i}"> 
             <font color="red"><b>${i}</b></font>
         </c:if>
         <c:if test="${pgList.currentPage!=i}"> 
                 ${i}
         </c:if>
     </a></li>
 </c:forEach>
 
 <c:if test="${pgList.endPage < pgList.pageCount}">
   <li class="page-item">  <a  class="page-link" href="/Playbu/main.do?pageNum=${pgList.startPage+pgList.blockSize}">[다음]</a>   </li>
 </c:if>
  </ul>
 
      

</div>

<%@ include file="footer.jsp"%>  

