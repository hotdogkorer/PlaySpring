
package com.play.main.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MaInDaoImpl extends SqlSessionDaoSupport implements MainDAO{

	@Override
	public List<MainDTO> mainList() {
		// TODO Auto-generated method stub
     return  getSqlSession().selectList("mainList");
		//return main;
	}
    @Override
    public MainDTO recentlyList() {
    	// TODO Auto-generated method stub
    	return getSqlSession().selectOne("recentlyMain");
    }
	
	
}
