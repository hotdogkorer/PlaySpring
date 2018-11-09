package com.play.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.play.mail.MainTest;
import com.play.member.dao.MemberDAOImpl;
import com.play.member.dao.MemberDTO;



@Controller
public class MemberController {

	
	 @Autowired
	 MemberDAOImpl member;
	
	 @RequestMapping(value="/login.do",method=RequestMethod.GET)
	 public String login(HttpServletRequest request) {
		 String referrer = request.getHeader("Referer");
		   if(referrer !=null) {
		    request.getSession().setAttribute("prevPage", referrer);
		    System.out.println("로그인시 이동할페이지=>"+referrer);
		   }
		 return "login";
	 }
	
	 @RequestMapping(value="/login.do",method=RequestMethod.POST)
	 public ModelAndView loginPro(HttpServletRequest request ,@RequestParam("email") String email,
			 										@RequestParam("passwd") String passwd) {
		 ModelAndView mav = new ModelAndView();
		 HttpSession session =request.getSession(true);
		 System.out.println("로그인 처리");
		 System.out.println("email=>"+email);
		 String page= (String)request.getSession().getAttribute("prevPage");
		 //System.out.println("password=>"+passwd);
		 MemberDTO mdto = new MemberDTO();
		 mdto.setEmail(email);
         mdto.setPasswd(passwd);
         
         MemberDTO logdto= member.loginCheck(mdto);
		  
         if(logdto==null) {
        	 mav.setViewName("loginErr");
        	 System.out.println("로그인 실패 ");
         }else {
        	 
        	 System.out.println("로그인 성공");
        	 session.setAttribute("email", email);	
        	 session.setAttribute("page", page);
        	 System.out.println("이동할 페이지"+page);
        	 mav.setViewName("loginPro"); 
         }
		 return mav;
	 }
	
	 @RequestMapping("/logout.do")
	 public String logout(HttpServletRequest request) {
		 HttpSession session =request.getSession(true);
		  session.invalidate();
		 return "logout";
	 }
	 @RequestMapping(value="/memberInfo.do",method=RequestMethod.GET)
	 public String memberInfo() {
		 System.out.println("회원가입페이지");
		 
		 return "memberInfo";
	 }
	 
	 @RequestMapping(value="/memberInfo.do",method=RequestMethod.POST)
	 public ModelAndView memberjoin(MemberDTO memberdto) {
		 ModelAndView mav  =new ModelAndView();
		 System.out.println("=================");
		 System.out.println("회원가입 정보받기 ");
		 /*System.out.println("이메일 "+memberdto.getEmail());
		 System.out.println("닉네임 "+memberdto.getNickname());
		 System.out.println("패스워드 "+memberdto.getPasswd());
		 System.out.println("이름"+memberdto.getName());
		 System.out.println("생년월일"+memberdto.getBirthdate());
		 System.out.println("휴대폰번호"+memberdto.getPhonenum());*/
		 System.out.println("=================");
		 member.insertmember(memberdto);
		 int num =member.maxmember();
		 memberdto.setNum(num);
		 member.insertLogin(memberdto);
		 
		 mav.setViewName("memberProc"); 
		 return mav;
	 }
	 
	 @RequestMapping(value="/emailcheck.do",method=RequestMethod.POST)
	 public @ResponseBody  String emailcheck(Model model , @RequestParam("email") String email ) {
		boolean check= member.emailcheck(email); 
	    String msg;
	    
		if(check) {
			//msg=" <font color =\"red\">사용 중인 이메일 입니다</font>";
			msg="true";
		}else {
			//msg="<font color =\"blue\">사용 가능한 이메일 입니다</font>";
			msg="false";
		}
		 
		 //model.addAttribute("msg", msg);
		 System.out.println("이메일 체크"+msg);
		 return msg;
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="/nickcheck.do", method=RequestMethod.POST)
	 public String nickcheck(@RequestParam("nickname") String nickname) {
		 String msg="";
		boolean check= member.nickcheck(nickname);
		if(check) {
			msg="true";
		}else {
			msg="false";
		}
		 System.out.println("닉네임 체크"+msg);
		 return msg;
	 }
	 
	 @RequestMapping(value="/passwordsearch.do", method=RequestMethod.GET)
	 public String passwdsearch() {
		 
		 return "passwdsearch";
	 }
	 @RequestMapping(value="/passwordsearch.do", method=RequestMethod.POST)
	 public String passwdsearchPro(HttpServletRequest request ,Model model ) {
		 
		 String email=request.getParameter("email");
	     String phone= request.getParameter("phone");
		 
	     System.out.println("페스워드 찾기 결과");
	  //   System.out.println("이메일"+email);
	   //  System.out.println("폰번호"+phone);
	     MemberDTO mdto = new MemberDTO();
	     mdto.setEmail(email);
	     mdto.setPhonenum(phone);
	     MemberDTO result= member.passwordSearch(mdto);
	     String msg="";
	     if(result!=null) {
	    	    MainTest mail = new MainTest();
				mail.sendMail(result.getEmail(), result.getPasswd());
	    	 
	    	 return "passwdsearchOk";
	     }else {
	    	 msg="<font color=\"red\">일치된 정보가 없습니다 </font>";
	    	 
	     }
	     
	     model.addAttribute("msg", msg);
		 return "passwdsearch";
	 }
	 @RequestMapping(value="/memberbreak.do",method=RequestMethod.GET)
	 public ModelAndView memberbreak(HttpServletRequest request) {
		  ModelAndView mav =new ModelAndView();
		  mav.setViewName("memberbreak");
		 
		 return mav;
	 }
	 
	 @RequestMapping(value="/memberbreak.do",method=RequestMethod.POST)
	 public ModelAndView memeberbreakPost(HttpServletRequest request) {
		 ModelAndView mav = new ModelAndView();
			HttpSession session =request.getSession(true);
			String email =(String) session.getAttribute("email");
			String passwd = request.getParameter("passwd");
			String msg="";
			
			MemberDTO mdto = new MemberDTO();
			 mdto.setEmail(email);
	         mdto.setPasswd(passwd);
	         
	         MemberDTO resultdto= member.loginCheck(mdto);
			  
	         if(resultdto==null) {
	        	 msg="비밀번호가 틀렸습니다.";
	        	 mav.setViewName("memberbreak");
	 		     mav.addObject("msg", msg);
	         }else {
	        	 member.loginbreak(email);
	        	 String num =member.breaknum(email);
	        	 member.reservabreak(num);
	        	 member.memberbreak(num);
	        	 System.out.println("회원탈퇴 정상 처리");
	        	 mav.setViewName("memberout");
	         }
	         
	         return mav;
	 }
	 
	 
	 
}
