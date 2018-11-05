package com.play.lend;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class Month11DAOImpl extends SqlSessionDaoSupport implements Month11DAO {
	
	@Override
	public List<Month11DTO> selectMonth(String date) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("selectMonth",date);
	}
	
	@Override
	public int updateMonth(Month11DTO mon) {
		// TODO Auto-generated method stub
		return getSqlSession().update("monUpdate", mon);
	}
	
	@Override
	public int deleteMonth(Month11DTO mon) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("monDelete", mon);
	}
	
	@Override
	public int insertMonth(Month11DTO mon) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("monInsert", mon);
	}
}
