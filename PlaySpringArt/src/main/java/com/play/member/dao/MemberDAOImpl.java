package com.play.member.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class MemberDAOImpl extends SqlSessionDaoSupport  implements MemberDAO{
   
	@Override
	public String breaknum(String email) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("breaknum", email);
	}
	
	@Override
	public void memberbreak(String num) {
		// TODO Auto-generated method stub
	     getSqlSession().delete("memberbreak", num);
		
	}
	@Override
	public void reservabreak(String num) {
		// TODO Auto-generated method stub
		
		getSqlSession().delete("reservabreak", num);
	}
	
	@Override
	public void loginbreak(String email) {
		// TODO Auto-generated method stub
		getSqlSession().delete("loginbreak", email);
	}
	
	
	
	@Override
    public void passwdchangeLogin(MemberDTO mdto) {
    	// TODO Auto-generated method stub
    	getSqlSession().update("passwdchangeLogin", mdto);
    }
	
	@Override
	public void passwdchange(MemberDTO mdto) {
		// TODO Auto-generated method stub
	  	getSqlSession().update("passwdchange", mdto);
	}
	@Override
    public MemberDTO loginCheck(MemberDTO member) {
    	// TODO Auto-generated method stub
    	return getSqlSession().selectOne("loginCheck",member);
    }

	@Override
	public boolean nickcheck(String nickname) {
		// TODO Auto-generated method stub
		 String result=getSqlSession().selectOne("nickcheck", nickname);
		 if(result==null) {
			 return false;
		 }else {
			 return true;
		 }
	}

	@Override
	public boolean emailcheck(String email) {
		// TODO Auto-generated method stub
		 String result=getSqlSession().selectOne("emailcheck", email);
		 if(result==null) {
			 return false;
		 }else {
			 return true;
		 }
	}

	@Override
	public void insertmember(MemberDTO member) {
		// TODO Auto-generated method stub
	     getSqlSession().insert("insertmember", member);	
	}

	@Override
	public int maxmember() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("maxmember");
	}

	@Override
	public void insertLogin(MemberDTO member) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertLogin",member);
		
	}

	@Override
	public MemberDTO memberInfor(String email) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("memberInfor", email);
	}

	@Override
	public MemberDTO passwordSearch(MemberDTO mdto) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("passwordSearch", mdto);
	}

	@Override
	public boolean memberconfirm(MemberDTO mdto) {
		// TODO Auto-generated method stub
		MemberDTO result =getSqlSession().selectOne("memberconfirm", mdto);
		if(result==null) {
			return false;
		}else {
			return true;
		}
	}
    @Override
    public void memberUpdate(MemberDTO mdto) {
    	// TODO Auto-generated method stub
    	getSqlSession().update("memberUpdate", mdto);
    }
	
}
