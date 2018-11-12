package com.play.playSpringArt;


import java.util.*;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.play.main.dao.MaInDaoImpl;

import com.play.main.dao.MainDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	
	@Autowired
	MaInDaoImpl maindao;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/" ,method=RequestMethod.GET)
	public String home( Model model) {
		System.out.println("/ 메인페이지요청");
       List<MainDTO> mlist= maindao.mainList();
       MainDTO maindto = maindao.recentlyList();
		
       model.addAttribute("main",  maindto);
       model.addAttribute("proList", mlist);
       
		return "mainpage";
	}
	
	@RequestMapping(value = "/main.do")
	public String main( Model model) {
		System.out.println("main.do요청");
		List<MainDTO> mlist= maindao.mainList();
	    MainDTO maindto = maindao.recentlyList();
		model.addAttribute("proList", mlist);
		model.addAttribute("main",  maindto);
		return "mainpage";
	}
	@RequestMapping(value="/contact.do")
	public String contact() {
		
		return "contact";
	}
	
}
