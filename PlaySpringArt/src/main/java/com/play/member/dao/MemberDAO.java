package com.play.member.dao;


public interface MemberDAO {

	public MemberDTO loginCheck(MemberDTO member);
	public boolean nickcheck(String nickname);
	public boolean emailcheck(String email);
	public void insertmember(MemberDTO member);
	public int maxmember();
	public void insertLogin(MemberDTO member);
	public MemberDTO memberInfor(String email);
	public MemberDTO passwordSearch(MemberDTO mdto);
	public boolean memberconfirm(MemberDTO mdto);
	public void memberUpdate(MemberDTO mdto);
	public void passwdchange(MemberDTO mdto);
	public void passwdchangeLogin(MemberDTO mdto);
	public void loginbreak(String email);
	public String breaknum(String email);
	public void reservabreak(String num);
	public void memberbreak(String num);
	
}
