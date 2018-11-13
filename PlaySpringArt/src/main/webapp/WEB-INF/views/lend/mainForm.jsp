<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/lend_main/img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="Colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Yaseen</title>
	<script>
	$(function(){
		//형식 : $('선택자').hover(mouseover | function(){},mouseout | function(){})
		//hover : mouseover와 mouseout을 번갈아 호출하면서 이벤트 연결시킬 때
		$("#a1").hover(function(){//mouseover
			$("#b0").hide();
			$("#b1").show();
		},function(){//mouseout
			$("#b1").hide();
			$("#b0").show();
		})
		
		$("#a2").hover(function(){//mouseover
			$("#b0").hide();
			$("#b2").show();
		},function(){//mouseout
			$("#b2").hide();
			$("#b0").show();
		})
		
		$("#a3").hover(function(){//mouseover
			$("#b0").hide();
			$("#b3").show();
		},function(){//mouseout
			$("#b3").hide();
			$("#b0").show();
		})
	})	
	
	</script>
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,300,500,600" rel="stylesheet">
		<!--
		CSS
		============================================= -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/linearicons.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/nice-select.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/magnific-popup.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/bootstrap.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/main.css">
	</head>
	<body>
		
		<div class="main-wrapper">

			<!-- Start about Area -->
			<section class="about-area pt-100 pb-100">
				<div class="container">
					<div class="row align-items-center justify-content-between">
						<div class="col-lg-6 col-md-12 col-sm-12 about-left">
								<!-- <img class="img-fluid" src="img/about.jpg" alt=""> -->
								<img class="img-fluid" src="https://www.artgori.or.kr:40019/images/content01/about_2_3_1.gif" alt="공간소개">
						</div>
						<div class="col-lg-6 col-md-12 col-sm-12 about-right">
							<span class="lnr lnr-sun"></span>
							<h1 class="text-uppercase">
								<span>공간 극장</span> <br>
								을 소개합니다!
							</h1>
							<p>
								고리는 지역 커뮤니티 속에서 생활권 지역문화 담론과 예술활동을 생산·지원하는 공간, 삶터의 창조적 재미를 함께 발굴하고 새롭게 해석하는 예술활동의 장, 예술적 재능과 아이디어를 나누고 싶은 사람을 서로 이어주는 문화플랫폼이기를 희망합니다.

일상의 영역에서 소박하게 일어나는 예술적 관계망은 커뮤니티에 윤기를 더하고, 무한한 가능성을 잉태합니다. 그러나 생명력을 가진 예술공간의 필수전제조건은 공간을 함께 가꿔가는 사용자의 의지입니다.

신도림예술공간 고리를 완성해 줄 고리친구들의 문화예술 에너지로 지하역사가 들썩이길 기대해봅니다. 
							</p>
							<!-- <a class="learn-btn text-uppercase" href="#">Learn Details</a> -->
						</div>
					</div>
				</div>
			</section>
			<!-- End about Area -->

			<!-- Start feature Area -->
			<section class="feature-area pt-100 pb-100">
				<div class="container">
					<div class="row">
						<div class="col-lg-4 col-md-6 d-flex flex-row">
							<div class="single-feature" id="a1" onclick="test()" >
								<h2 class="text-uppercase">시설</h2>
								<p>
									Usage of the Internet is becoming more common due.
								</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 d-flex flex-row">
							<div class="single-feature" id="a2">
								<h2 class="text-uppercase">기본 소품</h2>
								<p>
									Usage of the Internet is becoming more common due.
								</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 d-flex flex-row">
							<div class="single-feature" id="a3">
								<h2 class="text-uppercase">대여 장비</h2>
								<p>
									Usage of the Internet is becoming more common due.
								</p>
							</div>
						</div>
						<div class="col-lg-12 col-md-6 d-flex flex-row" >
							<div class="single-feature" style="display:block;" id="b0">
								<h2 class="text-uppercase">[공간]소개</h2>
								<p style="width:645;height:435">
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
								</p>
							</div>
							
							<div class="single-feature" style="display:none;" id="b1">
								<h2 class="text-uppercase">Clean Coding</h2>
								<p style="color:green;">
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									
								</p>
							</div>
							
							<div class="single-feature" style="display:none" id="b2">
								<h2 class="text-uppercase">Clean Coding</h2>
								<p style="color:red">
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									
								</p>
							</div>
							
							<div class="single-feature" style="display:none;" id="b3">
								<h2 class="text-uppercase">Clean Coding</h2>
								<p style="color:blue">
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
									
								</p>
							</div>
						</div>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<!-- <div class="col-lg-4 col-md-6 d-flex flex-row">
							<div class="single-feature">
								<h2 class="text-uppercase">Fully Customizables</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
								</p>
							</div>
						</div> -->
						<!-- <div class="col-lg-4 col-md-6 d-flex flex-row">
							<div class="single-feature">
								<h2 class="text-uppercase">Flexible Design</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
								</p>
							</div>
						</div> -->
					</div>
				</div>
			</section>
			<!-- End feature Area -->

			

			<!-- Start secvice Area -->
			<section class="secvice-area pt-90 pb-90">
				<div class="container">
					<div class="row">
						<div class="col-md-4 single-service">
							<img class="d-block mx-auto img-fluid" src="/lend_main/img/s1.jpg" alt="">
							<div class="desc">
								<h2 class="text-uppercase">이용안내</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization. Societies globalization. Societies and the power of globalization. Societies globalization. Societies.
								</p>
								<a class="text-uppercase view-details" href="#">전문 보기</a>
							</div>
						</div>
						<div class="col-md-4 single-service">
							<div class="desc">
								<h2 class="text-uppercase">주의사항</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization. Societies.
								</p>
								<a class="text-uppercase view-details" href="#">전문 보기</a>
							</div>
							<img class="d-block mx-auto img-fluid" src="/lend_main/img/s2.jpg" alt="">
						</div>
						<div class="col-md-4 single-service">
							<img class="d-block mx-auto img-fluid" src="/lend_main/img/s3.jpg" alt="">
							<div class="desc">
								<h2 class="text-uppercase">공지사항</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization. Societies.
								</p>
								<a class="text-uppercase view-details" href="#">전문 보기</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End secvice Area -->0000000000000000000000000

			<!-- Start feature-bottom Area -->
			<section class="feature-bottom-area pt-100 pb-100">
				<div class="container">
					<div class="row ">
						<div class="col-lg-4 col-md-12 single-feat2 d-flex justify-content-between align-items-top">
							<div class="count">
								<h1>01</h1>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">responsive View</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
								</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-12 single-feat2 d-flex justify-content-between align-items-top">
							<div class="count">
								<h1>02</h1>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">Multiple Layouts</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
								</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-12 single-feat2 d-flex justify-content-between align-items-top">
							<div class="count">
								<h1>03</h1>
							</div>
							<div class="desc">
								<h2 class="text-uppercase">Flexible Design</h2>
								<p>
									Usage of the Internet is becoming more common due to rapid advancement of technology and the power of globalization.
								</p>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- End feature-bottom Area -->
			
			<!-- Start facts Area -->
			<section class="facts-area pt-100 pb-100">
			
				<div class="container">
					<div class="row">
						
						<div class="col-lg-3 col-md-6 single-fact">
							<h2 class="counter">2536</h2>
							<p class="text-uppercase">총 방문자수</p>
						</div>
						<div class="col-lg-3 col-md-6 single-fact">
							<h2 class="counter">25</h2>
							<p class="text-uppercase">오늘 방문자수</p>
						</div>
						<div class="col-lg-3 col-md-6 single-fact">
							<h2 class="counter">233</h2>
							<p class="text-uppercase">총 회원 수</p>
						</div>
						<div class="col-lg-3 col-md-6 single-fact">
							<h2 class="counter">1</h2>
							<p class="text-uppercase">오늘 가입자 수</p>
						</div>
						
					</div>
				</div>
				
			</section>
			<!-- End facts Area -->
		</div>
		<script src="<%=request.getContextPath()%>/lend_main/js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/vendor/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.ajaxchimp.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.nice-select.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.magnific-popup.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/waypoints.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.counterup.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/main.js"></script>
	</body>
</html>
