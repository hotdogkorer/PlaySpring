function nicknameCheck(id){
    //alert('닉네임중복검사2'+id);
    if(id==""){
    	 $("#nickcheck").html("<font color='red'>닉네임를 먼저 입력 요망 </font>");	
    	 return false;
    }   
    $.ajax({
    	url:'nickcheck.jsp',
    	data:{nickname:id},	
    	success:function(args){ //3 success 성공적으로 보내준경우 익명함수
			$('#nickcheck').html(args)
		 }
    })  	   
}
function emailCheck(email){
	// alert('이메일 검사'+email);
	 if(email==""){
		 $("#emailcheck").html("<font color='red'>이메일 를 먼저 입력 하세요 </font>");		
		 return false;
	 }
	 $.ajax({
	    	url:'emailcheck.jsp',
	    	data:{email:email},	
	    	success:function(args){ //3 success 성공적으로 보내준경우 익명함수
				$('#emailcheck').html(args)
			 }
	 })   
}



function memberinfo(){
  

   if(document.memberform.email.value==""){
        alert("이메일을 입력 하세요 ");
        return false;
   }
   var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/
   var email=document.memberform.email.value;
  
   if(regex.test(email) === false) {  
    	alert("잘못된 이메일 형식입니다.");  
    	return false;  
   }

   if(document.memberform.passwd.value==""){
        alert("비밀번호를 입력 하세요 ");
        return false;
   }
   if(document.memberform.passwdok.value==""){
        alert("비밀번호 확인을 입력 하세요 ");
        return false;
   }
   var pw = document.memberform.passwd.value; //비밀번호

   var pw2 =document.memberform.passwdok.value;
   
   if(pw !=pw2){
	   alert("비밀번호 가 일치 하지 않습니다 ");
       return false;
    }
   var pattern1 = /[0-9]/;
   var pattern2 = /[a-zA-Z]/;
   var pattern3 = /[~!@\#$%<>^&*]/;   
   if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||pw.length<8){
       alert("비밀번호 는 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
       return false;
   }        
   
   
   
   if(document.memberform.name.value==""){
        alert("이름을 입력 하세요 ");
        return false;
   }
   if(document.memberform.nickname.value==""){
       alert("닉네임을 입력 하세요 ");
       return false;
  }
   if(document.memberform.phonenum.value==""){
        alert("휴대폰 번호를 입력 하세요 ");
        return false;
   }
   if(document.memberform.birthdate.value==""){
        alert("생년월일를 입력 하세요 ");
        return false;
   }
}

function memberjoin(){
	location.href="/Playbu/memberInfo.do";
}
function logincheck(){
	 if(document.loginform.email.value==""){
	        alert("이메일을 입력 하세요 ");
	        return false;
	   }
	 if(document.loginform.passwd.value==""){
	        alert("비밀번호를 입력 하세요 ");
	        return false;
	   } 
	
}

