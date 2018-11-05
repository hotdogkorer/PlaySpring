package com.play.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Hashtable;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;


@Repository
public class NoticeDAOImpl extends SqlSessionDaoSupport implements NoticeDAO {

	public int getNotiCount() {
		// TODO Auto-generated method stub
		return  getSqlSession().selectOne("notiMain_count");//resultType="count"
	}

	//검색 메서드
	@Override
	public List getBoardArticles(NoticeDTO noti) {
		// TODO Auto-generated method stub
		if(noti.getSearch()==null || noti.getSearch()=="") {
			return getSqlSession().selectList("notiMain_nosearch",noti);
		} else {
			return getSqlSession().selectList("notiMain_search",noti);
		}
	}
	
	@Override
	public Hashtable pageList(String pageNum, int count) {
		// TODO Auto-generated method stub
		Hashtable<String,Integer> pgList=new Hashtable<String, Integer>();
		int pageSize=5;
		int blockSize=3;
		
		if(pageNum==null){
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		int startRow=(currentPage-1)*pageSize+1;
		int endRow=currentPage*pageSize;
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
		return getSqlSession().selectOne("notiMaxNum");
	}
	
	@Override
	public int insertNoti(NoticeDTO noti) {
		return getSqlSession().insert("notiInsert", noti);
	}
	
	@Override
	public int readcountPlus(int num) {
		// TODO Auto-generated method stub
		return getSqlSession().update("readCountPlus", num);
	}
	
	@Override
	public NoticeDTO noticeContent(int num) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("noticeContent", num);
	}
	
	@Override
	public int noticeUpdate(NoticeDTO noti) {
		// TODO Auto-generated method stub
		return getSqlSession().update("noticeUpdate", noti);
	}
	
	@Override
	public int noticeDelete(int num) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("noticeDelete", num);
	}
	
}
