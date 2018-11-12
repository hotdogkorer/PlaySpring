<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<script type="text/javascript">
 $(function(){
   $('body').addClass("elements-page");
 })
</script>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/lend_main/img/fav.png">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,300,500,600" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/linearicons.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/nice-select.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/magnific-popup.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/lend_main/css/main.css">
<script src="<%=request.getContextPath()%>/lend_main/js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/vendor/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.ajaxchimp.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.nice-select.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.magnific-popup.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/waypoints.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/jquery.counterup.min.js"></script>
		<script src="<%=request.getContextPath()%>/lend_main/js/main.js"></script>



<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="entry-header">
						<h2 class="entry-title">회원가입</h2>

						<ul class="breadcrumbs flex align-items-center">
							<li><a href="#">공간극장</a></li>
						</ul><!-- .breadcrumbs -->
					</div><!-- .entry-header -->
				</div><!-- .col-12 -->
			</div><!-- .row -->
		</div><!-- .container -->
	</div>
<%-- <center>

<div class="row elements-wrap">
  <article class="container">
           <div class="entry-header">
    		<h2 class ="entry-title" style="color:black" > </h2>
          </div>
    <form role="form" class="form-horizontal" name="memberform" method="post" onsubmit="return memberinfo()" action="<%=request.getContextPath()%>/memberInfo.do">
    <input type="hidden" name="join" value="join">
    <div class="form-group col-md-12">
  <!--   <label for="inputEmail" class="col-md-2 control-label" >이메일</label> -->
    <div class="col-md-offset-4 col-md-5">
    <input type="email" class="form-control" name="email" id="email" maxlength="30"  placeholder="이메일 입력하세요">
    <p id="emailcheck"></p>
    </div>
    <div class="col-md-offset-4 col-md-5">
      <input type="button"  class="btn btn-primary" onclick="javascript:emailCheck(this.form.email.value)" value="이메일 중복검사">
     </div> 
    </div>
    <div class="form-group">
    <!-- <label for="inputPassword" class="col-sm-2 control-label">비밀번호</label> -->
    <div class="col-md-offset-4 col-md-5">
    <input type="password" class="form-control" name="passwd" id="inputPassword" maxlength="15" placeholder="비밀번호 숫자, 특수문자 포함 8자 이상">
    <p class="help-block"></p>
    </div>
    </div>
       <div class="form-group">
<!--     <label for="inputPasswordCheck" class="col-sm-2 control-label">비밀번호 확인</label> -->
    <div class="col-md-offset-4 col-md-5">
    <input type="password" class="form-control" name="passwdok" id="inputPasswordCheck" maxlength="15" placeholder="비밀번호를 한번 더 입력해주세요.">
      <p class="help-block"></p>
    </div>
    </div>
    
    <div class="form-group">
   <!--  <label for="inputName" class="col-sm-2 control-label">이름</label> -->
    <div class="col-md-offset-4 col-md-5">
    <input type="text" class="form-control" name="name" id="inputName" maxlength="10"  placeholder="이름을 입력하세요">
    </div>
    </div>
    <div class="form-group">
  <!--   <label for="inputName" class="col-sm-2 control-label">닉네임 </label> -->
    <div class="col-md-offset-4 col-md-5">
    <input type="text" class="form-control" name="nickname" id="nickname"  maxlength="15" placeholder="닉네임을 입력하세요">
    <p id="nickcheck">  </p>
    </div>
     <div class="col-md-offset-4 col-md-5">
      <input type="button"  class="btn btn-primary" onclick="javascript:nicknameCheck(this.form.nickname.value)" value="닉네임 중복검사">
     </div> 
    </div>

    <div class="form-group">
    <!-- <label for="inputNumber" class="col-sm-2 control-label">휴대폰번호</label> -->
    <div class="col-md-offset-4 col-md-5">
    <input type="text" class="form-control" name="phonenum" id="inputNumber" maxlength="20"  placeholder="휴대폰번호 - 없이 적어주세요.">
      <p class="help-block"></p>
    </div>
    </div>

    <div class="form-group">
<!--     <label for="inputName" class="col-sm-2 control-label">생년월일</label> -->
    <div class="col-md-offset-4 col-md-5">
    <input type="text" class="form-control" name="birthdate" id="inputbirthdate" maxlength="10" placeholder="생년월일을 입력하세요">
    </div>
    </div>
    
    <div class="form-group">
    <label for="inputName" class="col-sm-2 control-label"></label>
    <div class="col-md-6">
      <button type="submit" class="btn btn-primary">회원가입</button>
      <input  type="reset"  class="btn btn-primary" value="다시작성">
    </div>
    </div>
    </form>
  </article> 
  
</div> 
</center> --%>

<center>
<div class="white-bg">
<div class="container">
<div class="section-top-border">
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<h3 class="mb-30">회원 정보를 입력해주세요</h3>
								<form role="form" class="form-horizontal" name="memberform" method="post" onsubmit="return memberinfo()" action="<%=request.getContextPath()%>/memberInfo.do">
								<input type="hidden" name="join" value="join">	
									<div class="mt-10">
										<!-- <input type="email" class="form-control" name="email" id="email" maxlength="30"  placeholder="이메일 입력하세요"> -->
										<input type="email" name="email" id="email" placeholder="이메일을 입력하세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일을 입력하세요'" required class="single-input">
										<input type="button"  class="btn btn-primary" onclick="javascript:emailCheck(this.form.email.value)" value="이메일 중복검사">
										<!-- <p id="emailcheck"></p> -->
										<span id="emailcheck"></span>
									</div>
									
									<div class="mt-10">
										<input type="password" name="passwd" id="inputPassword" placeholder="비밀번호는 숫자, 특수문자를 포함하여 8자 이상 작성하세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호는 숫자, 특수문자를 포함하여 8자 이상 작성하세요'" required class="single-input">
										<!-- <input type="password" class="form-control" name="passwd" id="inputPassword" maxlength="15" placeholder="비밀번호 숫자, 특수문자 포함 8자 이상"> -->
										<p class="help-block"></p>
									</div>
									<div class="mt-10">
										<input type="password" name="passwdok" id="inputPasswordCheck" placeholder="비밀번호를 한 번 더 입력해주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호를 한 번 더 입력해주세요'" required class="single-input">
										<!-- <input type="password" class="form-control" name="passwdok" id="inputPasswordCheck" maxlength="15" placeholder="비밀번호를 한번 더 입력해주세요."> -->
										<p class="help-block"></p>
									</div>
									<div class="mt-10">
										<input type="text" name="name" id="inputName" placeholder="이름을 입력하세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름을 입력하세요'" required class="single-input">
										<!-- <input type="text" class="form-control" name="name" id="inputName" maxlength="10"  placeholder="이름을 입력하세요"> -->
									</div>
									<!-- For Gradient Border Use -->
									<!-- <div class="mt-10">
										<div class="primary-input">
											<input id="primary-input" type="text" name="first_name" placeholder="Primary color" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primary color'">
											<label for="primary-input"></label>
										</div>
									</div> -->
									<div class="mt-10">
										<input type="text" name="nickname" id="nickname" placeholder="닉네임을 입력하세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '닉네임을 입력하세요'" required class="single-input">
										<!-- <input type="text" class="form-control" name="nickname" id="nickname"  maxlength="15" placeholder="닉네임을 입력하세요"> -->
    									<input type="button"  class="btn btn-primary" onclick="javascript:nicknameCheck(this.form.nickname.value)" value="닉네임 중복검사">
    									<p id="nickcheck"></p>
									</div>
									<div class="mt-10">
										<input type="text" name="phonenum" id="inputNumber" placeholder="휴대폰번호는 - 없이 적어주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '휴대폰번호는 - 없이 적어주세요'" required class="single-input">
										<!-- <input type="text" class="form-control" name="phonenum" id="inputNumber" maxlength="20"  placeholder="휴대폰번호 - 없이 적어주세요."> -->
										<p class="help-block"></p>
									</div>
									<div class="mt-10">
										<input type="text" name="birthdate" id="inputbirthdate" placeholder="생년월일을 입력해주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '생년월일을 입력해주세요'" required class="single-input">
										<!-- <input type="text" class="form-control" name="birthdate" id="inputbirthdate" maxlength="10" placeholder="생년월일을 입력하세요"> -->
									</div>
									<!-- <div class="input-group-icon mt-10">
										<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
										<input type="text" name="address" placeholder="Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'" required class="single-input">
									</div>
									<div class="input-group-icon mt-10">
										<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
										<div class="form-select">
											<select>
												<option value="1">City</option>
												<option value="1">Dhaka</option>
												<option value="1">Dilli</option>
												<option value="1">Newyork</option>
												<option value="1">Islamabad</option>
											</select>
										</div>
									</div>
									<div class="input-group-icon mt-10">
										<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
										<div class="form-select">
											<select>
												<option value="1">Country</option>
												<option value="1">Bangladesh</option>
												<option value="1">India</option>
												<option value="1">England</option>
												<option value="1">Srilanka</option>
											</select>
										</div>
									</div>

									<div class="mt-10">
										<textarea class="single-textarea" placeholder="Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Message'" required></textarea>
									</div>
									 -->
									<div class="form-group">
    <label for="inputName" class="col-sm-2 control-label"></label>
    <div class="col-md-6">
      <button type="submit" class="btn btn-primary">회원가입</button>
      <input  type="reset"  class="btn btn-primary" value="다시작성">
    </div>
    </div>
									
								</form>
						
							</div>
							
						</div>

					</div>
			</div>
		</div>
    </center>







<%@ include file="footer.jsp"%>  