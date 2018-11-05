package com.play.main.dao;

import java.sql.Timestamp;

public class MainDTO {
	private int product_id;
	private String opening_hours;
	private String product_name;
	private String place_name;
	private String place_addr;
    private String tel;
    private String pro_desc;
    private String pro_content;
    private int price;
    private Timestamp pro_day;
    private String filename;
    private String fileinfoname;
    
    
    
	public String getFileinfoname() {
		return fileinfoname;
	}
	public void setFileinfoname(String fileinfoname) {
		this.fileinfoname = fileinfoname;
	}
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public Timestamp getPro_day() {
		return pro_day;
	}
	public void setPro_day(Timestamp pro_day) {
		this.pro_day = pro_day;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getOpening_hours() {
		return opening_hours;
	}
	public void setOpening_hours(String opening_hours) {
		this.opening_hours = opening_hours;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPlace_name() {
		return place_name;
	}
	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}
	public String getPlace_addr() {
		return place_addr;
	}
	public void setPlace_addr(String place_addr) {
		this.place_addr = place_addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPro_desc() {
		return pro_desc;
	}
	public void setPro_desc(String pro_desc) {
		this.pro_desc = pro_desc;
	}
	public String getPro_content() {
		return pro_content;
	}
	public void setPro_content(String pro_content) {
		this.pro_content = pro_content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
    
	

}
