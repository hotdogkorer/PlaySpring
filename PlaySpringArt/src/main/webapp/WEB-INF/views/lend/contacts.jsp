<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title></title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/lend/css/master.css">

<!-- SWITCHER -->
<link rel="stylesheet" id="switcher-css" type="text/css" href="<%=request.getContextPath()%>/lend/assets/switcher/css/switcher.css" media="all" />
<link rel="alternate stylesheet" type="text/css" href="<%=request.getContextPath()%>/lend/assets/switcher/css/color1.css" title="color1" media="all" />
<link rel="alternate stylesheet" type="text/css" href="<%=request.getContextPath()%>/lend/assets/switcher/css/color2.css" title="color2" media="all" />
<link rel="alternate stylesheet" type="text/css" href="<%=request.getContextPath()%>/lend/assets/switcher/css/color3.css" title="color3" media="all" />
<link rel="alternate stylesheet" type="text/css" href="<%=request.getContextPath()%>/lend/assets/switcher/css/color4.css" title="color4" media="all" />

<script>

	$(function(){
		
	})


	$(function aa(){
		$('#submit').click(function(){
			var form=$('form').serialize();
		})	
	})	
</script>

</head>
<body>

		<section class="section-contacts">
			<div class="b-content-holder">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-8 col-sm-offset-2">
							<div class="b-form-holder">
								<form id="contact-form" class="b-form" action="requestEmail.do" onclick="aa()">
									<h3 class="form-title third-title">
										공간 극장을 이용해주셔서 감사합니다.
										<br>
										요금 및 주의사항 등은 <a>이용안내</a>를 참고해 주시기 바랍니다.
									</h3>
									<div id="success"></div>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-12 col-sm-6">
												<input type="text" pattern=".{3,}" class="form-control" id="form-name" name="name" required placeholder="예약자 이름/사용인원">
											</div>
											<div class="col-xs-12 col-sm-6">
												<input type="tel" pattern=".{3,}" class="form-control" id="form-phone" name="phone" required placeholder="휴대폰 번호" autocomplete="off">
											</div>
											<div class="col-xs-12 col-sm-6">
												<input type="text" pattern=".{3,}" class="form-control" id="datetimepicker" name="date" required placeholder="원하는 날짜를 선택해주세요" autocomplete="off">
												<i class="fa fa-calendar-o" aria-hidden="true"></i>
											</div>
											<div class="col-xs-12 col-sm-6">
												<input type="text" pattern=".{3,}" class="form-control" id="form-time" name="time" required placeholder="원하는 시간을 입력해주세요" autocomplete="off">
												<i class="fa fa-clock-o" aria-hidden="true"></i>
											</div>
											<div class="col-xs-12 col-sm-12">
												<textarea id="form-comment" class="form-control" required name="message" rows="6" placeholder="기타사항은 여기에 적어주시기 바랍니다."></textarea>
											</div>
											<div class="col-xs-12 col-sm-12 text-center">
												<button type="submit" class="btn btn-submit">
													send
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<div class="container">
					<div class="b-contact-info col-xs-12 col-sm-12 wow zoomIn">
						<div class="row">
							<div class="col-sm-6 col-md-3">
								<div class="contact-info-item text-center">
									<div class="icon">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
									</div>
									<div class="text">
										서울 특별시 동작구
										<br>
										사당동 1026-39
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="contact-info-item text-center">
									<div class="icon">
										<i class="fa fa-mobile" aria-hidden="true"></i>
									</div>
									<div class="text">
										010-2596-6830
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="contact-info-item text-center">
									<div class="icon">
										<i class="fa fa-paper-plane" aria-hidden="true"></i>
									</div>
									<div class="text">
										animuel01@daum.net
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="contact-info-item text-center">
									<!-- <div class="icon">
										<i class="fa fa-clock-o" aria-hidden="true"></i>
									</div> -->
									<div>
										<b style="color:white;font-size:34px">문의 시간</b>
									</div>
									<div class="text">
										07:30 - 24:00
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</section>


<!-- Global -->
<script src="<%=request.getContextPath()%>/lend/js/jquery-2.2.3.min.js"></script>
<script src="<%=request.getContextPath()%>/lend/js/moment.js"></script>
<script src="<%=request.getContextPath()%>/lend/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/lend/js/waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/lend/js/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/lend/js/jquery.placeholder.min.js"></script>

<!--bootstrap-datetimepicker -->
<script src="<%=request.getContextPath()%>/lend/assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

<!--bootstrap-select -->
<script src="<%=request.getContextPath()%>/lend/assets/bootstrap-select/bootstrap-select.min.js"></script>

<!-- imagesLoaded -->
<!-- <script src="js/imagesloaded.pkgd.min.js"></script> -->

<!-- Assets -->
<!-- <script src="assets/switcher/js/dmss.js"></script> -->

<!--Owl Carousel-->
<!-- <script src="assets/owl-carousel/owl.carousel.min.js"></script> -->

<!-- slider-pro-master -->
<!-- <script src="assets/slider-pro-master/js/jquery.sliderPro.min.js"></script> -->

 <!-- Maps -->
<!-- <script src="http://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyDlTz321f1UB2nj158e7JPjcvrQ5oHfvUA" type="text/javascript"></script>
<script src="js/map.js" type="text/javascript"></script> -->

<!--Contact form--> 
<!-- <script src="assets/contact/jqBootstrapValidation.js"></script> 
<script src="assets/contact/contact_me.js"></script> -->

<!-- Template -->
<script src="<%=request.getContextPath()%>/lend/js/theme.js"></script>
</body>
</html>

