package com.play.reser.dao;

import java.sql.Timestamp;

public class ReservaDTO {

	private int  res_num;
	private int  product_id;
	private int  num;
	private String res_name;
	private String res_tel;
	private String res_email;
	private Timestamp res_date;
	private int res_count;
	private int res_price;
	private String sitnum;
	private String productname;
	
	
	
	
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	
	public int getRes_num() {
		return res_num;
	}
	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	public String getRes_tel() {
		return res_tel;
	}
	public void setRes_tel(String res_tel) {
		this.res_tel = res_tel;
	}
	public String getRes_email() {
		return res_email;
	}
	public void setRes_email(String res_email) {
		this.res_email = res_email;
	}
	public Timestamp getRes_date() {
		return res_date;
	}
	public void setRes_date(Timestamp res_date) {
		this.res_date = res_date;
	}
	public int getRes_count() {
		return res_count;
	}
	public void setRes_count(int res_count) {
		this.res_count = res_count;
	}
	public int getRes_price() {
		return res_price;
	}
	public void setRes_price(int res_price) {
		this.res_price = res_price;
	}
	public String getSitnum() {
		return sitnum;
	}
	public void setSitnum(String sitnum) {
		this.sitnum = sitnum;
	}
	
	
	
	
}
