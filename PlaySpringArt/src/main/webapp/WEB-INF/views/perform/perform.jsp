<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ include file="../top.jsp"%> 
 <%-- <c:if test="${sessionScope.email== null }">
   <script type="text/javascript">
		alert('로그인 후 이용가능합니다.');
		location.href="/Playbu/login.do";
	</script>
 </c:if>    --%>
<script type="text/javascript">
 $(function(){
   $('body').addClass("blog-page");
 })
</script>
  <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">공연정보</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="main.do">공간극장</a></li>
                            <li>공연정보</li>
                        </ul><!-- .breadcrumbs -->
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->

    <div class="main-content">
        <div class="container">
            <div class="last-news">
                <div class="entry-header">
                    <div class="entry-title">
                        <p>공간극장</p>
                        <h2>공연정보</h2>
                    </div><!-- entry-title -->
                </div>
       
                <div class="row blog-list-page">
                   <c:forEach  var="perform"  items="${proList}">
                   
                    <div class="col-12 col-md-6 ">
                        <div class="blog-content">
                            <figure class="featured-image">
                                <a href="performInfo.do?product_id=${perform.product_id}"> <img src="<%=request.getContextPath()%>/resources/upload/${perform.filename}" alt="${perform.product_name}" width="600px" height="450px" style="padding:0"> </a>
                            </figure><!-- featured-image -->

                            <div class="box-link-date">
                                <a href="#"><fmt:formatDate value="${perform.pro_day}"
                timeStyle="medium" pattern="yyyy.MM.dd" /></a>
                            </div><!-- box-link-date -->

                            <div class="entry-content">
                                <div class="entry-header">
                                    <h2>${perform.product_name}</h2>
                                </div><!-- entry-header -->

                                <div class="entry-meta">
                                    <span class="author-name"><a href="#">공연시간${perform.opening_hours}</a></span>
                                    <span class="space">|</span>
                                    <span class="comments-count"><a href="#">입장료  ${perform.price}원</a></span>
                                </div><!-- entry-meta -->

                                <div class="entry-description">
                                    <p></p>
                                </div><!-- entry-description -->
                            </div><!-- entry-content -->
                        </div>
                    </div><!-- col-6 -->
                   </c:forEach>
                  

                    <!-- <div class="col-12 load-more flex justify-content-center">
                        <input type="submit" name="" value="Load More" class="btn">
                    </div> -->
                </div><!-- blog-list-page -->
            </div><!-- last-news -->
        </div><!-- container -->
    </div><!-- main-content -->
 
 
    
    <center>
    <c:if test="${sessionScope.email== 'hotdogkorer@nate.com'}">
	<p>
          <a href="performInsert.do" class="btn btn-primary" role="button">글쓰기</a>
   </p>       
   </c:if>
   </center>
  <%-- <nav aria-label="Page navigation">
  <ul class="pagination">
  <c:if test="${pgList.startPage > pgList.blockSize}">
    <li class="page-item"><a class="page-link" href="perform.do?pageNum=${pgList.startPage-pgList.blockSize}">[이전]</a></li>   
 </c:if>
 
 <c:forEach var="i"  begin="${pgList.startPage}" end="${pgList.endPage}">
    <li class="page-item"> <a class="page-link"href="perform.do?pageNum=${i}">
        <c:if test="${pgList.currentPage==i}"> 
             <font color="red"><b>${i}</b></font>
         </c:if>
         <c:if test="${pgList.currentPage!=i}"> 
                 ${i}
         </c:if>
     </a></li>
 </c:forEach>
 
 <c:if test="${pgList.endPage < pgList.pageCount}">
   <li class="page-item">  <a  class="page-link" href="perform.do?pageNum=${pgList.startPage+pgList.blockSize}">[다음]</a>   </li>
 </c:if>
  </ul>
  </nav>
  </center>	 --%>
 <%@ include file="../footer.jsp"%>   