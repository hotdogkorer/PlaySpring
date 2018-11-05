package com.play.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.play.member.dao.MemberDAOImpl;
import com.play.member.dao.MemberDTO;


@Controller
public class MypageController {

	@Autowired
	 MemberDAOImpl member;

	 
	@RequestMapping(value="/mypage.do" ,method=RequestMethod.GET)
	public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session =request.getSession(true);
		String email= (String) session.getAttribute("email");
		MemberDTO mdto = member.memberInfor(email);
		mav.addObject("member", mdto);
		mav.setViewName("mypage");
		return mav;
	}
	
	@RequestMapping(value="/mypage.do" ,method=RequestMethod.POST)
	public ModelAndView mypagePost(HttpServletRequest request) {
		ModelAndView mav= new ModelAndView();
		
		  String name = request.getParameter("name");
		   String nickname =request.getParameter("nickname");
		   String phonenum = request.getParameter("phonenum");
		   String passwd =request.getParameter("passwd");
		   String birthdate =request.getParameter("birthdate");
			HttpSession session =request.getSession(true);
			String email= (String) session.getAttribute("email");
		   MemberDTO mdto = new MemberDTO();
		   
		   mdto.setEmail(email);
		   mdto.setName(name);
		   mdto.setNickname(nickname);
		   mdto.setPhonenum(phonenum);	
		   mdto.setPasswd(passwd);
          mdto.setBirthdate(birthdate);
          boolean check =member.memberconfirm(mdto);
          String msg="";         
          if(check) {
       	      member.memberUpdate(mdto);
              msg="회원정보가 수정되었습니다";
       	   
          }else {
        	  msg="비밀번호가 틀렸습니다";
       	   
          }
          
          	MemberDTO mem =member.memberInfor(email);	
		    //request.setAttribute("member", mem);
		    //request.setAttribute("msg", msg);
		    mav.addObject("member", mem);
		    mav.addObject("msg", msg);
		    mav.setViewName("mypage");
		   
          
          
		return mav;
	}
	
	@RequestMapping("/mypassword.do")
	public ModelAndView Mypassword(HttpServletRequest request) {
		 ModelAndView  mav = new  ModelAndView ();
		 //String url="mypassword.jsp";
		   mav.setViewName("mypassword");
			String pw = request.getParameter("password");
			String newpw= request.getParameter("newpasswd");
			String info = request.getParameter("info");
			HttpSession session =request.getSession(true);
			String email = (String) session.getAttribute("email");	
			if(info==null) {
				
				
			}else {
			
				MemberDTO mypasswd = new MemberDTO();
				mypasswd.setEmail(email);
				mypasswd.setPasswd(pw);
				MemberDTO check =member.loginCheck(mypasswd);
				String msg="";
				if(check==null) {
						msg="비밀번호가 틀렸습니다"	;
			
				}else {
					msg="비밀번호가 변경되었습니다";
					MemberDTO newpasswd = new MemberDTO();
				    newpasswd.setEmail(email);
				    newpasswd.setPasswd(newpw);
					
					
					member.passwdchange(newpasswd);
					member.passwdchangeLogin(newpasswd);
					MemberDTO mem = member.memberInfor(email);
					mav.addObject("member", mem);
					
				}					
				mav.addObject("msg", msg);	
			}		
			
		 
		 
		 return mav;
	}
	
	
}
