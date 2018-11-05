<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<%@ include file="top.jsp"%>

    <div class="hero-content">
        <div class="container">
            <div class="row">
                <div class="col-12 offset-lg-2 col-lg-10">
                    <div class="entry-header">
                        <h2>${main.product_name}</h2>

                        <div class="entry-meta-date">
                             <fmt:formatDate value="${main.pro_day}" pattern="yyyy-MM-dd"/>
                        </div><!-- .entry-meta-date -->
                    </div><!-- .entry-header -->

                    <div class="countdown flex flex-wrap justify-content-between" data-date="${main.pro_day}">
                        <div class="countdown-holder">
                            <div class="dday"></div>
                            <label>마감일</label>
                        </div><!-- .countdown-holder -->

                        <div class="countdown-holder">
                            <div class="dhour"></div>
                            <label>시</label>
                        </div><!-- .countdown-holder -->

                        <div class="countdown-holder">
                            <div class="dmin"></div>
                            <label>분</label>
                        </div><!-- .countdown-holder -->

                        <div class="countdown-holder">
                            <div class="dsec"></div>
                            <label>초</label>
                        </div><!-- .countdown-holder -->
                    </div><!-- .countdown -->
                </div><!-- .col-12 -->
            </div><!-- row -->

            <div class="row">
                <div class="col-12 ">
                    <div class="entry-footer">
                        <a href="<%=request.getContextPath()%>/reservation.do?pronum=${main.product_id}"" class="btn">예매하기</a>
                        <a href="<%=request.getContextPath()%>/performInfo.do?product_id=${main.product_id}" class="btn current">공연정보 보기</a>
                    </div>
                </div>
            </div>
        </div><!-- .container -->
    </div><!-- .hero-content -->

   
      <div class ="home-page">   
        <div class="homepage-next-events">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="entry-title">
                            <p>공연소개</p>
                            <h2>다음 공연들</h2>
                        </div><!-- entry-title -->
                    </div><!-- col-12 -->
                </div><!-- row -->
            </div><!-- container -->

            <div class="next-event-slider-wrap">
                <div class="swiper-container next-event-slider">
                    <div class="swiper-wrapper">
                     <c:forEach  var="perform"  items="${proList}">	
                        <div class="swiper-slide">
                       
                            <div class="next-event-content">
                                <figure class="featured-image">
                                    <img src="resources/upload/${perform.filename}"  alt=""  width="150px" height="350px">

                                    <a href="<%=request.getContextPath()%>/performInfo.do?product_id=${perform.product_id}" class="entry-content flex flex-column justify-content-center align-items-center">
                                        <h3> ${perform.product_name} </h3>
                                        <p>공연일 <fmt:formatDate value="${perform.pro_day}"
          								      timeStyle="medium" pattern="yyyy.MM.dd" /></p>
                                    </a>
                                </figure><!-- featured-image -->
                            </div><!-- next-event-content -->
                    
                        </div><!-- swiper-slide" -->
                    </c:forEach>
                  </div>
              </div>
                   

                <div class="swiper-button-next">
                    <img src="images/button.png" alt="">
                </div><!-- .slider-button -->
            </div><!-- .next-event-slider-wrap -->
        </div><!-- homepage-next-events  -->

        <div class="home-page-last-news">
            <div class="container">
                <div class="header">
                    <div class="entry-title">
                        <p> </p>
                        <h2>공연 최신뉴스</h2>
                    </div><!-- entry-title -->
                </div><!-- header -->

                <div class="home-page-last-news-wrap home-page">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <figure class="featured-image">
                                <a href="http://www.playdb.co.kr/magazine/magazine_temp_view.asp?kindno=2&no=2889&page=1&sReqList=&sort=1&NM=Y"> <img src="http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/Magazine/2018/10/30_092915.jpg" alt="fesival+celebration"> </a>
                            </figure><!-- featured-image -->

                            <div class="box-link-date">
                                <a href="#">2018.10.30</a>
                            </div>

                            <div class="content-wrapper">
                                <div class="entry-content">
                                    <div class="entry-header">
                                        <h2><a href="#">뮤지컬 '파가니니' 캐스팅 공개…콘(KoN), 김경수, 박규원, 유승현 등</a></h2>
                                    </div><!-- entry-header -->

                                    <div class="entry-meta">
                                        <span class="author-name"><a href="#"> </a></span>
                                        <span class="space">|</span>
                                        <span class="comments-count"><a href="#"></a></span>
                                    </div><!-- entry-meta -->

                                    <div class="entry-description">
                                        <p>
                                        오는 12월 대전, 내년 2월 서울 공연을 앞두고 있는 뮤지컬 '파가니니'의 캐스팅이 공개됐다. 
                                        뮤지컬 '파가니니'는 당대에 악마에게 영혼을 팔았다는 이유로 사망 이후 교회 공동묘지 매장까지 
                                         거부당한 상황에서 아킬레가 아버지 파가니니의 영원한
                                        </p>
                                    </div><!-- entry-description -->
                                </div><!-- entry-content -->
                            </div><!-- content-wrapper -->
                        </div><!-- .col-6 -->

                        <div class="col-12 col-md-6">
                            <figure class="featured-image">
                                <a href="http://www.playdb.co.kr/magazine/magazine_temp_view.asp?kindno=2&no=2888&page=1&sReqList=&sort=1&NM=Y"> <img src="http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/Magazine/2018/10/30_092634.jpg" alt="fesival+celebration"> </a>
                            </figure><!-- featured-image -->

                            <div class="box-link-date">
                                <a href="">2018.10.30</a>
                            </div>

                            <div class="content-wrapper">
                                <div class="entry-content">
                                    <div class="entry-header">
                                        <h2><a href="http://www.playdb.co.kr/magazine/magazine_temp_view.asp?kindno=2&no=2888&page=1&sReqList=&sort=1&NM=Y"> 뮤지컬 ‘팬텀’ 2차 티켓 오픈 진행…금일 11시 인터파크에서 진행</a></h2>
                                    </div><!-- entry-header -->

                                    <div class="entry-meta">
                                        <span class="author-name"><a href="#"></a></span>
                                        <span class="space">|</span>
                                        <span class="comments-count"><a href="#"></a></span>
                                    </div><!-- entry-meta -->

                                    <div class="entry-description">
                                        <p>
                                        연말 기대작 뮤지컬 ‘팬텀’의 2차 티켓 오픈이 금일(30일) 오전 11시 인터파크 티켓에서 진행된다.   
                                        뮤지컬 ‘팬텀’은 가스통 르루(Gaston Leroux)의 대표작 ‘오페라의 유령’(1910)을 원작으로 만들어진 공연으로, 토니어.
                                        </p>
                                    </div><!-- entry-description -->
                                </div><!-- entry-content -->
                            </div><!-- .content-wrapper -->
                        </div><!-- col-6 -->
                    </div><!-- row -->
                </div><!-- home-page-last-news-wrap -->
            </div><!-- container -->
        </div><!-- home-page-last-news -->
    </div>


<%@ include file="footer.jsp"%>