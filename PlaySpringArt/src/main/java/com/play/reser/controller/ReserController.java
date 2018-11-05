package com.play.reser.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.play.member.dao.MemberDTO;
import com.play.perform.dao.PerformDAOImpl;
import com.play.perform.dao.ProductDTO;
import com.play.reser.dao.ReservaDAOImpl;
import com.play.reser.dao.ReservaDTO;

@Controller
public class ReserController {

    @Autowired
	 PerformDAOImpl performdao;
    
    @Autowired
    ReservaDAOImpl reservadao;
	
	@RequestMapping(value="/reservation.do")
	public ModelAndView ReservationAction(HttpServletRequest request) {
		String pronum=request.getParameter("pronum");
		ModelAndView mav = new ModelAndView();
		ProductDTO pDTO = performdao.getProductInfo(pronum);
	//	request.setAttribute("product", pDTO);
		mav.addObject("product", pDTO);
		mav.setViewName("/reser/reservation");
		return mav;  
	}
	
	@RequestMapping(value="/reservachair.do")
	public ModelAndView Reservachair(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<String> Alist=null;
		List<String> chcklist=null;//예약된좌석
		List<String> spacelist=null;
		
		String pronum=request.getParameter("pronum");
		String count= request.getParameter("count");
		String price =request.getParameter("price");		
		System.out.println("pronum=>"+pronum+" count=>"+count);
		Alist =performdao.getsitnum();
		chcklist =performdao.checksitnum(pronum);
		
		spacelist=Alist; 
		
		for (int i = 0; i < spacelist.size(); i++)
		{
			for (int j = 0; j < chcklist.size(); j++)
			{	
				if (spacelist.get(i).equals(chcklist.get(j)))
				{
					spacelist.remove(i);
				}
			}
		}
		
		TreeMap<String, Integer> sit = new TreeMap<String, Integer>();
		for (int i = 0; i <chcklist.size(); i++)
		{
			sit.put(chcklist.get(i), 1);
		}
		for (int i = 0; i <spacelist.size(); i++)
		{
			sit.put(spacelist.get(i), 0);
		}
		
		mav.addObject("sit", sit);
		mav.addObject("count", count);
		mav.addObject("pronum", pronum);
		mav.addObject("price", price);
		mav.setViewName("/reser/reservaChair");
	   return mav;
	   
	}
	
	@RequestMapping(value="/reservacash.do")
	public ModelAndView Reservacash(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String sit = request.getParameter("sit");
		String count =request.getParameter("count");
		String pronum=request.getParameter("pronum");
		System.out.println("pronum=>"+pronum);
		//String price =(String)request.getAttribute("price");
	//	ProductDAO pDao = new ProductDAO();
		ProductDTO pdto = performdao.getProductInfo(pronum);
		
		//System.out.println("가격"+price);
		String[] sitStr = sit.split("[,]");
		for(int i=0 ;i<sitStr.length; i++) {
			System.out.println("선택한좌석"+sitStr[i]);
		}
		HttpSession session =request.getSession(true);
		String email=(String) session.getAttribute("email");
		System.out.println("count"+count);
		mav.setViewName("/reser/reservacash");
		mav.addObject("sit", sit);
		mav.addObject("count", count);
		mav.addObject("email", email);
		mav.addObject("product", pdto);
		mav.addObject("pronum", pronum);
		//request.setAttribute("pronum", pronum);
		//String url="/reser/reservacash.jsp";
		
		return mav;
	}
	@RequestMapping(value="/reservationPro.do")
	public ModelAndView reservationPro (HttpServletRequest request ) {
		ModelAndView mav = new ModelAndView();
		String email = request.getParameter("email");
		String sit= request.getParameter("sit");
        String count=request.getParameter("count");
        String pronum=request.getParameter("pronum");
        String price =request.getParameter("price");
        System.out.println("+++++ \"/reservationPro.do+++++++");
        System.out.println("email" +email);
        System.out.println("sit"+sit);
        System.out.println("count"+count);
        System.out.println("pronum"+pronum);
        System.out.println("pronum"+price);
        MemberDTO mem = reservadao.getMember(email);
        ReservaDTO rdto = new ReservaDTO();
        String[] sitStr = sit.split("[,]");
        int res_count=Integer.parseInt(count);
        int res_price = Integer.parseInt(price);
        int proid=Integer.parseInt(pronum);
        
        rdto.setProduct_id(proid);
        rdto.setNum(mem.getNum());
        rdto.setRes_email(email);
        rdto.setRes_tel(mem.getPhonenum());
        rdto.setRes_name(mem.getName());
        rdto.setRes_count(res_count);
        rdto.setRes_price(res_price);
        
        rdto.setProduct_id(proid);
        rdto.setNum(mem.getNum());
        rdto.setRes_email(email);
        rdto.setRes_tel(mem.getPhonenum());
        rdto.setRes_name(mem.getName());
        rdto.setRes_count(res_count);
        rdto.setRes_price(res_price);
        
        for(int i=0 ;i<sitStr.length; i++) {
			System.out.println("선택한좌석"+sitStr[i]);
			rdto.setSitnum(sitStr[i]);
			 reservadao.insertReserva(rdto);
     //			rdao.insertReserva(rdto);	
		}
        mav.addObject("count", count);
        mav.addObject("price", price);
        mav.addObject("sit",sit);
        request.setAttribute("count", count);
        request.setAttribute("price", price);
		request.setAttribute("sit", sit);
        
        
        
		mav.setViewName("/reser/reservationconfrm");
		return mav;
	}
	
	@RequestMapping(value="/reservacheck.do")
	public ModelAndView reservacheck(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
	
		   HttpSession session =request.getSession(true);
			System.out.println("/reservacheck.do 요청");
			String email=(String) session.getAttribute("email");
			System.out.println("email=>"+email);
		
			//ReservaDAO rdao = new ReservaDAO();
			List<ReservaDTO> list = reservadao.getReserInfo(email);
			
			//System.out.println("예약수"+list.size());
			mav.addObject("list", list);
			mav.setViewName("/reser/reservacheck");
		    // request.setAttribute("list", list);
			
		return mav;
	}
	
	@RequestMapping("/reservalDel.do")
	public String reservaDel(HttpServletRequest request) {
		 String num =request.getParameter("num");
		 String url="/reser/reservaldel";

		 reservadao.reserDel(num);
		 return url;
	}
	
	
}
