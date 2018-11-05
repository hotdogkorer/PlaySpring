package com.play.perform.dao;

import java.util.ArrayList;
import java.util.List;



public interface PerformDAO {

	public List<ProductDTO> getProduct(); 
	 public ProductDTO getProductInfo(String product_id);
	 public List<String> getsitnum();
	 public List<String> checksitnum(String product_id);
	 public void insertProduct(ProductDTO product);
	 public int getProductId();
	 public void insertFileInfo(FileInfoDTO file);
	 public void updateProduct(ProductDTO product);
	 public void updateFileInfo(FileInfoDTO file);
	 public void performdelete(String product_id);
	 public void filedelete(String product_id);
	 
}
