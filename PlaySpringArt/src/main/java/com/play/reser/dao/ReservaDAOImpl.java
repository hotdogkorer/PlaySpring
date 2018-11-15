package com.play.reser.dao;

import java.util.Hashtable;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.play.member.dao.MemberDTO;

public class ReservaDAOImpl extends SqlSessionDaoSupport implements ReservaDAO {

	
	@Override
	public int resercount(String email) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getReserInfoCount", email);
	}
	
	@Override
	public void insertReserva(ReservaDTO rdto) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertReserva",rdto);
	}

	@Override
	public List<ReservaDTO> getReserInfo(ReservaDTO rdto) {
		// TODO Auto-generated method stub
		return  getSqlSession().selectList("getReserInfo", rdto);
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

	public Hashtable  pageList(String pageNum, int count) {
  		//페이징 처리결과를 저장할 hashtable 객체를 선언 
  		Hashtable<String,Integer> pgList=new Hashtable<String , Integer>();
  		
  		int pageSize = 5;// numPerPage;페이지당 보여주는 게시물수
  		int blockSize = 5;// 블럭당 보여주는 페이지수
  	
  		// 게시판
  		if (pageNum == null) {// 맽처음 실행한것이라면
  			pageNum = "1";
  		}
  		int currentPage = Integer.parseInt(pageNum);// 현재페이지
  		// 화면에 출력 ->시작레코드 번호
  		int startRow = (currentPage - 1) * pageSize + 1;
  		//int endRow = currentPage * pageSize;
  		int endRow = pageSize;
  		int number = 0; // 
  		  System.out.println("현재페이지 "+currentPage);
  		  System.out.println("현재 레코드수 (count)"+count);
  		  number=count -(currentPage-1)*pageSize;
  		  System.out.println("페이지별 number"+number);
  		  
  		  int pageCount=count/pageSize+(count%pageSize==0?0:1);
  	       System.out.println("pageCount=>"+pageCount);
  	     	//2 시작페이지 끝페이지
  	      int startPage=currentPage-((currentPage-1)%blockSize);
  	      int endPage=startPage+blockSize-1;
  	     	System.out.println("startPage"+startPage+" endPage "+endPage);
  	     	//블럭별로 구분해서 링크 걸어서 조건 
  	      if(endPage >pageCount){endPage=pageCount;}
  			
  	      pgList.put("pageSize", pageSize);
  	      pgList.put("blockSize", blockSize);
  	      pgList.put("currentPage", currentPage);
  	      pgList.put("startRow", startRow);
  	      pgList.put("endRow",	endRow );
  	      pgList.put("count", count);
  	      pgList.put("number", number);
  	      pgList.put("startPage", startPage);
  	      pgList.put("endPage", endPage);
  	      pgList.put("pageCount",pageCount);
  	      
  	      //ListAction (pageNum count)=>처리결과 =>ListAction->list.jsp
  		
  		return pgList;
  		
  	}

	
}
