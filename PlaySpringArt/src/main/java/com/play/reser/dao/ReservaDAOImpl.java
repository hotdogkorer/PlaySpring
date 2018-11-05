package com.play.reser.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.play.member.dao.MemberDTO;

public class ReservaDAOImpl extends SqlSessionDaoSupport implements ReservaDAO {

	@Override
	public void insertReserva(ReservaDTO rdto) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertReserva",rdto);
	}

	@Override
	public List<ReservaDTO> getReserInfo(String email) {
		// TODO Auto-generated method stub
		return  getSqlSession().selectList("getReserInfo", email);
	}

	@Override
	public MemberDTO getMember(String email) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getMember", email);
	}

	@Override
	public void reserDel(String num) {
		// TODO Auto-generated method stub
		getSqlSession().delete("reserDel", num);
	}

	
}
