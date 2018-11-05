package com.play.notice;

import java.util.Hashtable;
import java.util.List;


public interface NoticeDAO {
	public int getNotiCount();//개시물 갯수 찾기
	public Hashtable pageList(String pageNum, int count);//하단 넘버링
	public List getBoardArticles(NoticeDTO noti);//검색 메서드
	public int maxNum();
	public int insertNoti(NoticeDTO noti);
	public int readcountPlus(int num);
	public NoticeDTO noticeContent(int num);
	public int noticeUpdate(NoticeDTO noti);
	public int noticeDelete(int num);
}
