<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../top.jsp"%> 
<c:if test="${sessionScope.email== null }">
   <script type="text/javascript">
		alert('로그인 후 이용가능합니다.');
		location.href="login.do";
	</script>
 </c:if>   
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="js/map.js"></script>


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
                        <h2 class="entry-title">공연예매</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li>공연예매</li>
                            <li></li>
                        </ul><!-- .breadcrumbs -->
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->

    <div class="main-content">
        <div class="container">
            <div class="entry-header">
                <div class="entry-title">
                    <p>JUST THE BEST</p>
                    <h2>${product.product_name} 예매정보입니다 </h2>
                </div><!-- entry-title -->
            </div><!-- entry-header -->

            <div class="row">
                <div class="col-12">
                    <div class="tabs">
                        <ul class="tabs-nav flex">
                            <li class="tab-nav flex justify-content-center align-items-center active" data-target="#tab_details">예매정보</li>
                            <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_venue">장소</li>
                            <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_organizers">공연</li>
                            <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_about">공연안내</li>
                        </ul><!-- tabs-nav -->


                        <div class="tabs-container">
                            <div id="tab_details" class="tab-content">
                                <div class="flex flex-wrap justify-content-between">
                                    <div class="single-event-details">
                                        <div class="single-event-details-row">
                                            <label>공연날짜</label>
                                            <p><fmt:formatDate value="${product.pro_day}"
          								      timeStyle="medium" pattern="yyyy.MM.dd" /></p>
                                        </div>

                                        <div class="single-event-details-row">
                                            <label>공연시간</label>
                                            <p>${product.opening_hours}</p>
                                        </div>

                                        <div class="single-event-details-row">
                                            <label>입장료</label>
                                            <p>  &nbsp;${product.price}원 </p>
                                          <!-- 
                                              <p class="sold-out">$89 <span>Sold Out</span></p> -->
                                        </div>

                                    </div>

                                    <div class="single-event-map">
                                      <!-- <iframe id="gmap_canvas" src="https://maps.google.com/maps?q=university of san francisco&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
										 -->
										 <div id="map_view" style="width:100%; height:460px;"></div>
										
    
                                    </div>
                                </div>
                            </div><!-- .tab-content -->

                            <div id="tab_venue" class="tab-content">
                              <center>
                                <p>
                                    공연장소:${product.place_name}  </p>
                                  <p>  <img src="/Playbu/map/13_map_13.png"></p>
                              </center>   
                           
                            </div><!-- .tab-content -->

                            <div id="tab_organizers" class="tab-content">
                                <p>
                                
                                      <img src="<%=request.getContextPath()%>/resources/upload/${product.filename}" alt="${product.filename}" width="200px" height="250px">
                                 </p>
                            </div><!-- .tab-content -->

                            <div id="tab_about" class="tab-content">
                                <p><Strong>입장료 &nbsp;${product.price}원</Strong><br>
                                <Strong>공연날짜 &nbsp; <fmt:formatDate value="${product.pro_day}"
          								      timeStyle="medium" pattern="yyyy.MM.dd" /></Strong><br> 
                                <Strong>공연시간 &nbsp;${product.opening_hours}</Strong><br> 
                                <Strong>장소 &nbsp;${product.place_name}</Strong>
                         		</p>
                                
                            </div><!-- .tab-content -->
                        </div><!-- .tabs-container -->
                    </div><!-- .tabs -->
                </div><!-- .col-12 -->
            </div><!-- .row -->
                
            <div class="row">
                <div class="col-12">
                    <div class="event-tickets">
                       <form method="post" action="<%=request.getContextPath()%>/reservachair.do"> 
                       <input type="hidden" name="price" value="${product.price}">
                        <div class="ticket-row flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center">
                            <div class="ticket-type flex flex-column flex-lg-row align-items-lg-center">
                                <h3 class="entry-title">티켓예매</h3>
                                <span class="mt-2 mt-lg-0">관람석</span>
                                <div class="ticket-price mt-3">
                                    ${product.price}원
                                </div><!-- ticket-price -->
                            </div><!-- ticket-type -->
                      
                            <input type="hidden" name="pronum" value="${product.product_id}">
                            <div class="flex align-items-center">
                                <div class="number-of-tickets flex justify-content-between align-items-center">
                                    <span class="decrease-ticket">-</span>
                                    <input type="number" name="count" value="1" class="ticket-count">
                                    <span class="increase-ticket">+</span>
                                </div><!-- number-of-tickets -->
                                <div class="clear-ticket-count">다시입력</div>
                            </div><!-- flex -->

                            <input type="submit" name="" value="예매" class="btn mt-2 mb-2 mt-lg-0 mb-lg-0"><!-- btn -->
                           
                        </div><!-- ticket-row -->
                         </form> 
                   
                            <!-- btn -->
                        </div><!-- ticket-row -->
                    </div><!-- event-tickets -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- main-content -->
   
 
 
 
 
<%@ include file="../footer.jsp"%>   
 
 