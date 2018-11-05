<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<script type="text/javascript">
 $(function(){
   $('body').addClass("elements-page");
 })
</script>

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
<center>

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
</center>
<%@ include file="footer.jsp"%>  