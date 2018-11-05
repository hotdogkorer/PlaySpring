package com.play.comm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Hashtable;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;



@Repository
public class CommDAOImpl extends SqlSessionDaoSupport implements CommDAO {
	
	//현제 존재하는 게시물 갯수 찾는 메서드
	@Override
	public int getCommCount() {
		// TODO Auto-generated method stub
		return  getSqlSession().selectOne("commMain_count");//resultType="count"
	}

	//검색 메서드
	@Override
	public List getBoardArticles(CommDTO comm) {
		// TODO Auto-generated method stub
		if(comm.getSearch()==null || comm.getSearch()=="") {
			return getSqlSession().selectList("commMain_nosearch",comm);
		} else {
			return getSqlSession().selectList("commMain_search",comm);
		}
	}
	
	@Override
	public Hashtable pageList(String pageNum, int count) {
		// TODO Auto-generated method stub
		Hashtable<String,Integer> pgList=new Hashtable<String, Integer>();
		int pageSize=10;
		int blockSize=5;
		
		if(pageNum==null){
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		System.out.println("currentPage="+currentPage);
		int startRow=(currentPage-1)*pageSize+1;
		int endRow=currentPage*pageSize;
		System.out.println("startRow,endRow"+startRow+","+endRow);
		int number=0;
		System.out.println("count = "+count);
		number=count-(currentPage-1)%pageSize;
		System.out.println("number = "+number );
		
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		System.out.println("pageCount : "+pageCount);
		int startPage=currentPage-((currentPage-1)%blockSize);
		int endPage=startPage+blockSize-1;
		System.out.println("startPage="+startPage+", endPage="+endPage);
		if(endPage>pageCount) endPage=pageCount;
		pgList.put("pageSize", pageSize);
		pgList.put("blockSize", blockSize);
		pgList.put("currentPage", currentPage);
		pgList.put("startRow", startRow);
		pgList.put("endRow", endRow);
		pgList.put("count", count);
		pgList.put("number", number);
		pgList.put("startPage", startPage);
		pgList.put("endPage", endPage);
		pgList.put("pageCount", pageCount);
		
		return pgList;
	}

	@Override
	public int maxNum() {
		// TODO Auto-generated method stub
		return  getSqlSession().selectOne("maxNum");
	}
	
	@Override
	public int refSet(CommDTO comm) {
		int num = comm.getNum();
		int re_step = comm.getRe_step();
		int re_level = comm.getRe_level();
		System.out.println("insertComm메서드, 받아온 num값="+num);
		return getSqlSession().update("refUpdate", comm);
	}
	
	
	@Override
	public int insertComm(CommDTO comm) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("commInsert", comm);
	}
	
	@Override
	public int commReadcountPluse(int num) {
		// TODO Auto-generated method stub
		return  getSqlSession().update("commReadcountPlus");
	}

	@Override
	public CommDTO commContent(int num) {
		// TODO Auto-generated method stub
		CommDTO comm = new CommDTO();
		return getSqlSession().selectOne("commContent", num);
	}
	
	@Override
	public int commUpdate(CommDTO comm) {
		// TODO Auto-generated method stub
		return getSqlSession().update("commUpdate", comm);
	}
	
	@Override
	public int commDelete(int num) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("commDelete", num);
	}
	

}
