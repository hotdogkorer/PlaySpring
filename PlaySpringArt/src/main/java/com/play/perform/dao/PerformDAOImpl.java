package com.play.perform.dao;

import java.util.Hashtable;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class PerformDAOImpl extends SqlSessionDaoSupport implements PerformDAO {
	
	@Override
	public void filedelete(String product_id) {
		// TODO Auto-generated method stub
		getSqlSession().delete("filedelete", product_id);
	}
	
	  @Override
	public void performdelete(String product_id) {
		// TODO Auto-generated method stub
		getSqlSession().delete("performdelete", product_id);
	}
		
	@Override
	public void updateFileInfo(FileInfoDTO file) {
		// TODO Auto-generated method stub
		
		getSqlSession().update("updateFileInfo", file);	
	}
	
	@Override
	public void updateProduct(ProductDTO product) {
		// TODO Auto-generated method stub
		
		getSqlSession().update("updateProduct",product)	;
	}
	
	
    @Override
    public int getProductId() {
    	// TODO Auto-generated method stub
    	return getSqlSession().selectOne("getProductId");
    }
    
    @Override
    public void insertFileInfo(FileInfoDTO file) {
    	// TODO Auto-generated method stub
    
      getSqlSession().insert("insertFileInfo", file);	
    }
    @Override
    public void insertProduct(ProductDTO product) {
    	// TODO Auto-generated method stub
    
    	getSqlSession().insert("insertProduct", product);
    }
	
	
	@Override
	public List<String> checksitnum(String product_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("checksitnum", product_id);
	}
	
	@Override
	public List<String> getsitnum() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getsitnum");
	}
	
	@Override
	public List<ProductDTO> getProduct() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getProduct");
	}
	
	@Override
	public ProductDTO getProductInfo(String product_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("getProductInfo", product_id);
	}
	
  	public Hashtable  pageList(String pageNum, int count) {
  		//페이징 처리결과를 저장할 hashtable 객체를 선언 
  		Hashtable<String,Integer> pgList=new Hashtable<String , Integer>();
  		
  		int pageSize = 8;// numPerPage;페이지당 보여주는 게시물수
  		int blockSize = 5;// 블럭당 보여주는 페이지수
  	
  		// 게시판
  		if (pageNum == null) {// 맽처음 실행한것이라면
  			pageNum = "1";
  		}
  		int currentPage = Integer.parseInt(pageNum);// 현재페이지
  		// 화면에 출력 ->시작레코드 번호
  		int startRow = (currentPage - 1) * pageSize + 1;
  		int endRow = currentPage * pageSize;
  		int number = 0; // 
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
