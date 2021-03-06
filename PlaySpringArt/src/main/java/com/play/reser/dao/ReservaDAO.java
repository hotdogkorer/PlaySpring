package com.play.reser.dao;

import java.util.*;

import com.play.member.dao.MemberDTO;


public interface ReservaDAO {

	public void insertReserva(ReservaDTO rdto);
	
	public List<ReservaDTO> getReserInfo(ReservaDTO rdto);
	
	public MemberDTO getMember(String email);
	
	public void reserDel(String num);
	
	public int resercount(String email);
	
}
