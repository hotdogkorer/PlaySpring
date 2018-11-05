package com.play.comm;

import java.sql.Timestamp;
import java.util.Hashtable;
import java.util.List;

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
public class CommController {

	@Autowired
	CommDAOImpl commpro;
	@Autowired
	CommDTO comm;
	@Autowired
	MemberDAOImpl mempro;
	@Autowired
	MemberDTO mem;
	
	
	@RequestMapping(value = "comm_main.do" , method = RequestMethod.GET)
	public ModelAndView commMain(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String pageNum = request.getParameter("pageNum");
		String search = request.getParameter("search");
		String searchtext = request.getParameter("searchtext");
		int count = commpro.getCommCount();
		Hashtable<String, Integer> pgList =	commpro.pageList(pageNum, count);
		comm.setStart(pgList.get("startRow")-1);
		comm.setEnd(pgList.get("endRow"));
		comm.setSearch(search);
		comm.setSearchtext(searchtext);
		List articleList = commpro.getBoardArticles(comm);
		mav.addObject("a",count);
		mav.addObject("articleList", articleList);
		mav.addObject("pgList" ,pgList);
		
		mav.setViewName("/comm/cm_main");
		
		return mav;
	}
	
	@RequestMapping(value = "comm_writeForm.do" , method = RequestMethod.GET)
	public ModelAndView commInsertForm(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int num = 0, ref = 1, re_step = 0, re_level = 0;
		String email = (String)session.getAttribute("email");
		mem=mempro.memberInfor(email);

		if (request.getParameter("num") != null) {
			num = Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
			System.out.println("num:" + num + ", ref:" + ref + ", re_step:" + re_step + ", re_level:" + re_level);
		}
		
		mav.addObject("num", num);
		mav.addObject("ref", ref);
		mav.addObject("re_step", re_step);
		mav.addObject("re_level", re_level);
		mav.addObject("writer", mem.getNickname());
		mav.addObject("email", email);
		mav.addObject("mem", mem);
		mav.setViewName("comm/writeForm");
		return mav;
	}
	
	@RequestMapping(value="comm_writePro.do" , method=RequestMethod.POST)
	public ModelAndView commInsertpro(HttpServletRequest request, CommDTO comm) throws Throwable {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		int maxNum=0;
		maxNum=commpro.maxNum();
		if(comm.getNum()==0) {//신규글
			comm.setRef(maxNum+1);
			comm.setRe_step(0);
			comm.setRe_level(0);
		}else {//답글
			commpro.refSet(comm);
			comm.setRef(comm.getRef());
			comm.setRe_step(comm.getRe_step()+1);
			comm.setRe_level(comm.getRe_level()+1);
		}

		comm.setReg_date(new Timestamp(System.currentTimeMillis()));
		comm.setIp(request.getRemoteAddr());
		commpro.insertComm(comm);
		mav.setViewName("comm/writePro");
		return mav;
	}
	
	@RequestMapping(value="comm_content.do", method=RequestMethod.GET)
	public ModelAndView commContent(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		int pageNum=Integer.parseInt(request.getParameter("pageNum"));
		CommDTO comm = null;
		commpro.commReadcountPluse(num);
		comm=commpro.commContent(num);
		mav.addObject("pageNum",pageNum);
		mav.addObject("comm",comm);
		mav.setViewName("comm/content");
		return mav;
	}
	
	@RequestMapping(value="comm_updateForm.do", method=RequestMethod.GET)
	public ModelAndView commUpdateForm(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		int pageNum=Integer.parseInt(request.getParameter("pageNum"));
		//CommDTO comm = null;
		comm=commpro.commContent(num);
		mav.addObject("pageNum",pageNum);
		mav.addObject("comm",comm);
		mav.setViewName("comm/updateForm");
		return mav;
	}
	
	@RequestMapping(value="comm_updatePro.do", method=RequestMethod.POST)
	public ModelAndView commUpdatePro(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		//CommDTO comm=new CommDTO();
		int num=Integer.parseInt(request.getParameter("num"));
		int pageNum=Integer.parseInt(request.getParameter("pageNum"));
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		comm.setContent(content);
		comm.setSubject(subject);
		int update=commpro.commUpdate(comm);
		System.out.println("CommController의 commUpdatePro성공여부 = "+update);
		mav.addObject("pageNum",pageNum);
		mav.setViewName("comm/updatePro");
		return mav;
	}
	
	@RequestMapping(value="comm_deleteForm.do", method=RequestMethod.GET)
	public ModelAndView commDeleteForm(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		int pageNum=Integer.parseInt(request.getParameter("pageNum"));
		mav.addObject("num", num);
		mav.addObject("pageNum", pageNum);
		mav.setViewName("comm/deleteForm");
		return mav;
	}
	
	
	@RequestMapping(value="comm_deletePro.do", method=RequestMethod.POST)
	public ModelAndView commDeletePro(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		int pageNum=Integer.parseInt(request.getParameter("pageNum"));
		int delete=commpro.commDelete(num);
		System.out.println("CommController의 commDeletePro성공여부 = "+delete);
		mav.addObject("pageNum",pageNum);
		mav.setViewName("comm/delete");
		return mav;
	}
}
