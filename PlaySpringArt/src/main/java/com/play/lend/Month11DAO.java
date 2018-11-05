package com.play.lend;

import java.util.List;


public interface Month11DAO {
	public List<Month11DTO> selectMonth(String date);
	public int updateMonth(Month11DTO mon);
	public int deleteMonth(Month11DTO mon);
	public int insertMonth(Month11DTO mon);
}
