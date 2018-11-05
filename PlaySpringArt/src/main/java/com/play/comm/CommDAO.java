package com.play.comm;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

public interface CommDAO {
	public int getCommCount();//개시물 갯수 찾기
	public Hashtable pageList(String pageNum, int count);//하단 넘버링
	public List getBoardArticles(CommDTO comm);//검색 메서드
	public int insertComm(CommDTO comm);
	public int maxNum();
	public int refSet(CommDTO comm);
	public int commReadcountPluse(int num);
	public CommDTO commContent(int num);
	public int commUpdate(CommDTO comm);
	public int commDelete(int num);

	
}
