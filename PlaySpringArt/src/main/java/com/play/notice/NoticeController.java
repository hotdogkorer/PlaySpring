package com.play.notice;

import java.sql.Timestamp;
import java.util.Hashtable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.play.member.dao.MemberDAOImpl;
import com.play.member.dao.MemberDTO;

@Controller
public class NoticeController {

	@Autowired
	MemberDAOImpl mempro;
	@Autowired
	MemberDTO mem;
	@Autowired
	NoticeDTO noti;
	@Autowired
	NoticeDAOImpl notipro;
	
	@RequestMapping(value = "notice_main.do" , method = RequestMethod.GET)
	public ModelAndView noticeMain(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		String pageNum = request.getParameter("pageNum");
		String search = request.getParameter("search");
		String searchtext = request.getParameter("searchtext");
		
		noti.setSearch(search);
		noti.setSearchtext(searchtext);
	
		int count = notipro.getNotiCount();
		Hashtable<String, Integer> pgList =	notipro.pageList(pageNum, count);
		noti.setStart(pgList.get("startRow")-1);
		noti.setEnd(pgList.get("endRow"));
		
		List articleList = notipro.getBoardArticles(noti);
		System.out.println("111111");
		mav.addObject("articleList", articleList);
		mav.addObject("pgList" ,pgList);
		
		mav.setViewName("/notice/notice_main");
		
		return mav;
	}
	
	@RequestMapping(value = "notice_writeForm.do" , method = RequestMethod.GET)
	public ModelAndView noticeInsertForm(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String email=(String)session.getAttribute("email");
		mem=mempro.memberInfor(email);
		String writer=mem.getNickname();
		mav.addObject("email",email);
		mav.addObject("writer",writer);
		mav.setViewName("/notice/notice_writeForm");
		return mav;
	}
	
	@RequestMapping(value = "notice_writePro.do" , method = RequestMethod.POST)
	public ModelAndView noticeInsertPro(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		noti.setEmail(request.getParameter("email"));
		noti.setWriter(request.getParameter("writer"));
		noti.setSubject(request.getParameter("subject"));
		noti.setContent(request.getParameter("content"));
		noti.setReg_date(new Timestamp(System.currentTimeMillis()));
		int insert=notipro.insertNoti(noti);
		System.out.println("NoticeController의 noticeInsertPro메서드 성공여부 = "+insert);
		mav.setViewName("/notice/notice_writePro");
		return mav;
	}
	
	@RequestMapping(value = "notice_content.do" , method = RequestMethod.GET)
	public ModelAndView noticeContent(HttpServletRequest request) {
		ModelAndView mav= new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		mav.addObject("num",num);
		mav.addObject("pageNum",request.getParameter("pageNum"));
		notipro.readcountPlus(num);
		noti=notipro.noticeContent(num);
		mav.addObject("noti", noti);
		mav.setViewName("/notice/notice_content");
		return mav;
	}
	
	@RequestMapping(value = "notice_updateForm.do", method = RequestMethod.GET)
	public ModelAndView noticeUpdate(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		noti=notipro.noticeContent(num);
		mav.addObject("num", num);
		mav.addObject("pageNum", request.getParameter("pageNum"));
		mav.addObject("noti", noti);
		mav.setViewName("notice/notice_updateForm");
		return mav;
	}
	
	@RequestMapping(value = "notice_updatePro.do", method = RequestMethod.POST)
	public ModelAndView noticeUpdatePro(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		noti.setNum(num);
		noti.setContent(request.getParameter("content"));
		noti.setSubject(request.getParameter("subject"));
		int update=notipro.noticeUpdate(noti);
		System.out.println("NoticeController의 noticeUpdatePro메서드 성공여부 = "+update);
		mav.addObject("pageNum", request.getParameter("pageNum"));
		mav.setViewName("/notice/notice_updatePro");
		return mav;
	}
	
	@RequestMapping(value = "notice_deleteForm.do", method = RequestMethod.GET)
	public ModelAndView noticeDelete(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("num", request.getParameter("num"));
		mav.addObject("pageNum", request.getParameter("pageNum"));
		mav.setViewName("notice/notice_deleteForm");
		return mav;
	}
	
	@RequestMapping(value = "notice_deletePro.do", method = RequestMethod.POST)
	public ModelAndView noticeDeletePro(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int num=Integer.parseInt(request.getParameter("num"));
		notipro.noticeDelete(num);
		mav.addObject("pageNum", request.getParameter("pageNum"));
		mav.setViewName("notice/notice_deletePro");
		return mav;
	}
	
}
