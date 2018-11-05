<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<%@ include file="../top.jsp"%>

<script type="text/javascript">
 $(function(){
   $('body').addClass("about-us");
 })
</script>

<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="entry-header">
						<h2 class="entry-title">공연상세 정보</h2>

						<ul class="breadcrumbs flex align-items-center">
							<li><h3><a href="#">${product.product_name}</a></h3></li>
						</ul><!-- .breadcrumbs -->
					</div><!-- .entry-header -->
				</div><!-- .col-12 -->
			</div><!-- .row -->
		</div><!-- .container -->
	</div>


    <div class="main-content">
        <div class="container">
            <div class="entry-header">
                <div class="entry-title">
                    <p></p>
                    <h2>${product.product_name}</h2>
                </div><!-- -->
            </div><!-- -->

            <div class="entry-content">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <div class="entry-header">
                            <h3>공연 정보</h3>
                        </div><!-- -->

                        <div class="entry-description">
                            <p>
                           ${product.pro_content}
                            </p>
                        </div><!-- entry-description -->
                    </div><!-- col-6 -->

                    <div class="col-12 col-lg-6 mt-5 mt-lg-0">
                        <div class="entry-header">
                            <h3>공연 안내</h3>
                        </div><!-- -->

                        <div class="entry-description">
                            <p>
                         <b>입장안내:</b>공연이 시작된 이후에는 안내원의 유도에 따라서만 입장할 수 있으며,<br> 
                         		본인 좌석이 아닌 빈 좌석으로 안내될 수 있습니다.</p>
                         <p><Strong>입장료 &nbsp;${product.price}원</Strong><br>
                                <Strong>공연날짜 &nbsp; <fmt:formatDate value="${product.pro_day}"
          								      timeStyle="medium" pattern="yyyy.MM.dd" /></Strong><br> 
                                <Strong>공연시간 &nbsp;${product.opening_hours}</Strong><br> 
                                <Strong>장소 &nbsp;${product.place_name}</Strong>
                         </p>
                         
                        </div><!-- entry-description -->
                    </div><!-- col-6 -->
                </div><!-- row -->
            </div><!-- entry-content -->
              <div class="col-md-offset-4 col-md-8">
              <div class="entry-content flex">
              				 <a href="<%=request.getContextPath()%>/reservation.do?pronum=${product.product_id}" class="btn btn-primary btn-lg" role="button">예매하기</a>
									 &nbsp; &nbsp; 
							 <a href="<%=request.getContextPath()%>/perform.do" class="btn btn-primary btn-lg" role="button">공연목록 보기</a>
							 <c:if test="${sessionScope.email== 'hotdogkorer@nate.com'}">		 &nbsp; &nbsp; 
							 <a href="<%=request.getContextPath()%>/performupdate.do?pronum=${product.product_id}" class="btn btn-primary btn-lg" role="button">공연 수정 하기</a>
							     &nbsp;&nbsp;
							 <a href="<%=request.getContextPath()%>/performdelete.do?pronum=${product.product_id}" class="btn btn-primary btn-lg" role="button"> 공연삭제하기 </a>
							 </c:if>
                 </div>
                </div>
            <figure class="col-md-offset-3 col-md-9 featured-image">
                <img src="<%=request.getContextPath()%>/resources/upload/${product.filename}" alt="${product.filename}" width="600px" height="560px">
                <img src="<%=request.getContextPath()%>/resources/upload/${product.fileinfoname}" alt="${product.fileinfoname}" width="600px">
              </figure>
          <%--     <figure class="col-md-offset-3 col-md-9 featured-image">
                <img src="/Playbu/upload/${product.fileinfoname}" alt="${product.fileinfoname}" width="500px" height="560px">
            </figure> --%>
        </div><!-- container -->
    </div><!-- main-content -->

<%@ include file="../footer.jsp"%> 