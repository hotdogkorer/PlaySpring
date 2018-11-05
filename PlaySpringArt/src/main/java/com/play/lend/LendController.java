package com.play.lend;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.play.mail.RequestEmail;


@Controller
public class LendController {
	
	@Autowired
	Month11DTO mon;
	
	@Autowired
	Month11DAOImpl monpro;
	
	@RequestMapping(value="lend_main.do")
	public ModelAndView lendMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/lend/lend_main");
		return mav;
	}
	
	@RequestMapping(value="lend_guide.do")
	public ModelAndView lendGuide() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/lend/lend_guide");
		return mav;
	}
	
	@RequestMapping(value="lend_schedule.do")
	public ModelAndView lendSchedule(HttpServletRequest request) {	
		ModelAndView mav = new ModelAndView();
		ArrayList<MonthList> aa = new ArrayList<MonthList>();
		List<Month11DTO> month11 = new ArrayList<Month11DTO>();
		for(int i=0;i<30;i++) {
			aa.add(new MonthList());
		}
		for(int i=0;i<30;i++) {
			aa.get(i).setDate(monpro.selectMonth(String.valueOf(i+1)));
		}
		for(int i=0;i<30;i++) {
			month11.addAll(i, aa.get(i).getDate());
		}
		mav.addObject("date", month11);
		mav.setViewName("/lend/lend_schedule");
		return mav;
	}
	
	@RequestMapping(value = "update11.do")
	public ModelAndView Month11Update(HttpServletRequest request, Month11DTO mon) {
		ModelAndView mav = new ModelAndView();
		int update=monpro.updateMonth(mon);
		System.out.println("LendController의 Month11Update메서드 성공여부 = "+update);
		mav.setViewName("redirect:lend_schedule.do");
		return mav;
	}
	
	@RequestMapping(value="delete11.do")
	public ModelAndView Month11Delete(HttpServletRequest request, Month11DTO mon) {
		ModelAndView mav = new ModelAndView();
		int delete=monpro.deleteMonth(mon);
		System.out.println("LendController의 Month11Delete메서드 성공여부 = "+delete);
		mav.setViewName("redirect:lend_schedule.do");
		return mav;
	}
	
	@RequestMapping(value="insertForm11.do")
	public ModelAndView Month11InsertForm(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("date", request.getParameter("date"));
		mav.setViewName("/lend/insert10");
		return mav;
	}
	
	@RequestMapping(value="lend_insert11Pro.do")
	public ModelAndView Month11InsertPro(HttpServletRequest request, Month11DTO mon) {
		ModelAndView mav = new ModelAndView();
		int insert=monpro.insertMonth(mon);
		System.out.println("LendController의 Month11insertPro메서드 성공여부 = "+insert);
		mav.setViewName("redirect:lend_schedule.do");
		return mav;
	}
	
	@RequestMapping(value="lend_request.do")
	public ModelAndView RequestLend(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/lend/lend_request");
		return mav;
	}
	
	@RequestMapping(value="requestEmail.do")
	public ModelAndView RequestMail(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String phone = request.getParameter("phone");
		String time = request.getParameter("time");
		String message = request.getParameter("message");

		RequestEmail remail = new RequestEmail();
		remail.sendMail(name, phone, date, time, message);
		mav.setViewName("/lend/RequestPro");
		return mav;
	}
}
