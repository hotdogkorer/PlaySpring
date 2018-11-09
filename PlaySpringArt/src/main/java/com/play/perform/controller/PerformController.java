package com.play.perform.controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.play.perform.dao.FileInfoDTO;
import com.play.perform.dao.PerformDAOImpl;
import com.play.perform.dao.ProductDTO;


@Controller
public class PerformController {

	
	@Autowired
	 PerformDAOImpl performdao;

	//공연정보 불러오기 
	@RequestMapping(value="/perform.do")
	public ModelAndView performAction(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		 String pageNum =request.getParameter("pageNum");
		 int count=0;
		 List<ProductDTO> proList=null;
		 proList=performdao.getProduct();
		 System.out.println("공연정보 불려오기");
		 System.out.println("prosize"+proList.size());
	/*	 for(int i=0; i<proList.size() ;i++) {
		   System.out.println(proList.get(i).getProduct_name());
		 }*/
		 
		 mav.addObject("proList", proList);
		 
		
		mav.setViewName("/perform/perform");
		return mav;
	}
	
	@RequestMapping(value="/performInfo.do")
	public ModelAndView performInfoAction(HttpServletRequest request) {
		 ModelAndView mav = new ModelAndView();
		 String product_id=request.getParameter("product_id");
		 ProductDTO pDTO =performdao.getProductInfo(product_id);
		 mav.addObject("product", pDTO);
		 mav.setViewName("/perform/performInfo");
		 return mav;
	}

	@RequestMapping(value="/performInsert.do",method=RequestMethod.GET)
	public String performInsertGet() {
		String url="/perform/performInsert";
		return url;
	}

    @RequestMapping(value="/performPro.do" )
	public ModelAndView performInsertPost(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		MultipartRequest multi = null;
		int maxSize = 1024 * 1024 * 50;
		String uploadPath="C:/Users/kitcoop/git/playstring/PlaySpringArt/src/main/webapp/resources/upload";
		System.out.println("절대경로 "+uploadPath);
		
        ProductDTO proDTO = new ProductDTO(); 
        FileInfoDTO fileDTO = new FileInfoDTO();
		String upload = "";
		String name="";
		String subject="";
		String fileName1 = ""; // 중복처리된 이름
	    String fileinfoname="";
	    String originalName1 = ""; // 중복 처리전 실제 원본 이름
	    long fileSize = 0; // 파일 사이즈
	    String fileType = ""; // 파일 타입
	    
	    String opening_hours;
		String product_name;
		String place_name;
		String place_addr;
	    String tel;
	    String pro_desc;
	    String pro_content;
	    String tmp_day;
	
	    int filecount =0;
	    Timestamp pro_day;
	    int price;
	    int proid=0;

	    //request.setCharacterEncoding("utf-8");
	     
		try {
		    request.setCharacterEncoding("utf-8");
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
		
			opening_hours = multi.getParameter("opening_hours");
			product_name= multi.getParameter("product_name");
			place_name= multi.getParameter("place_name");
			place_addr=multi.getParameter("place_addr");
			tel =multi.getParameter("tel");
			pro_desc = multi.getParameter("pro_desc");
			pro_content=multi.getParameter("pro_content");
			price = Integer.parseInt(multi.getParameter("price"));
			tmp_day=multi.getParameter("pro_day");
			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
			java.util.Date dateLatestLoginDate = formatter.parse(tmp_day);
			// java.util.Date 를 java.sql.Timestamp 로 변환한다.
			java.sql.Timestamp tsTime = new java.sql.Timestamp( dateLatestLoginDate.getTime() ) ;
			 pro_day=tsTime;
			//pro_day =Timestamp.valueOf(multi.getParameter("pro_day"));
			System.out.println("+++++++++performInfoAction Class ++++++++");
			System.out.println("opening_hours=>"+opening_hours);
			System.out.println("product_name=>"+product_name);
			System.out.println("place_name=>"+place_name);
			System.out.println("place_addr=>"+place_addr);
			System.out.println("tel=>"+tel);
			System.out.println("pro_desc =>"+pro_desc);
			System.out.println("pro_content =>"+pro_content);
			System.out.println("price =>"+price);
			System.out.println("공연날짜 =>"+pro_day);
			
			proDTO.setOpening_hours(opening_hours);
			proDTO.setProduct_name(product_name);
			proDTO.setPlace_name(place_name);
			proDTO.setPlace_addr(place_addr);
			proDTO.setTel(tel);
			proDTO.setPro_desc(pro_desc);
			proDTO.setPro_desc(pro_desc);
			proDTO.setPro_content(pro_content);
			proDTO.setPrice(price);
			proDTO.setPro_day(pro_day);
			
			 performdao.insertProduct(proDTO);
			 proid=performdao.getProductId();
			 
			System.out.println("+++++++++performInfoAction Class ++++++++");
			//proDAO.insertProduct(proDTO); 
		//	proid=proDAO.getProductId();
			
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()){
	        	
	            // form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
	            String file1 = (String)files.nextElement(); // 파일 input에 지정한 이름을 가져옴
	            // 그에 해당하는 실재 파일 이름을 가져옴
	           
	            originalName1 = 	multi.getOriginalFileName(file1);
	            // 파일명이 중복될 경우 중복 정책에 의해 뒤에 1,2,3 처럼 붙어 unique하게 파일명을 생성하는데
	            // 이때 생성된 이름을 filesystemName이라 하여 그 이름 정보를 가져온다.(중복에 대한 처리)
	            if(filecount==0) {
	            fileName1 = multi.getFilesystemName(file1);
	            }else {
	            fileinfoname = multi.getFilesystemName(file1);
	            }
	            //fileDTO.setFile_name(fileName1);
	            
	            // 파일 타입 정보를 가져옴
	            fileType = multi.getContentType(file1);
	            // input file name에 해당하는 실재 파일을 가져옴
	            File file = multi.getFile(file1);
	            // 그 파일 객체의 크기를 알아냄
	            fileSize = file.length();
	            
	         //   fileDTO.setFile_name(fileName1);
	           // fileDTO.setFile_type(fileType);
	            if(filecount==0) {
		        	  System.out.println("PerformInsertAction() fileupload=>"+fileName1);
		          }else {
		        	  System.out.println("PerformInsertAction() fileupload=>"+fileinfoname);
		          }
	            
	          filecount=filecount+1;  
	        
			} 
			fileDTO.setProduct_id(proid); 
			fileDTO.setFile_name(fileName1);
			fileDTO.setFileinfo_name(fileinfoname);
			performdao.insertFileInfo(fileDTO);
			
	        } catch (Exception e) {
	            System.out.println("/performPro.do 공연업로드 에러  "+e);
	            e.printStackTrace();
	 		}
		 mav.setViewName("perform/performPro");
		return mav;
	}
    
    @RequestMapping(value="performupdate.do",method=RequestMethod.GET)
    public ModelAndView performUpdate(HttpServletRequest request) {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("perform/performupdate");
        String pronum= request.getParameter("pronum");
        ProductDTO pdto=performdao.getProductInfo(pronum);
        request.setAttribute("product", pdto);
    	return mav;
    }
	@RequestMapping(value="performupdate.do",method=RequestMethod.POST)
    public ModelAndView performUpdatePost(HttpServletRequest request)		throws Throwable  {
    	
		ModelAndView mav = new ModelAndView();
		
    	MultipartRequest multi = null;
		int maxSize = 1024 * 1024 * 50;
		String uploadPath="C:/Users/kitcoop/git/playstring/PlaySpringArt/src/main/webapp/resources/upload";
		//System.out.println("절대경로 "+uploadPath);
		
        ProductDTO proDTO = new ProductDTO(); 
        FileInfoDTO fileDTO = new FileInfoDTO();
		String upload = "";
		String name="";
		String subject="";
		String fileName1 =null; // 중복처리된 이름
	    String fileinfoname=null;
	    String originalName1 = ""; // 중복 처리전 실제 원본 이름
	    long fileSize = 0; // 파일 사이즈
	    String fileType = ""; // 파일 타입
	   // String productId= request.getParameter("productId");
	    String opening_hours;
		String product_name;
		String place_name;
		String place_addr;
	    String tel;
	    String pro_desc;
	    String pro_content;
	    String tmp_day;
	    int filecount =0;
	    Timestamp pro_day;
	    int price;
	    int proid=0;
	    
	    multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
	    String productId= multi.getParameter("productId");
		opening_hours = multi.getParameter("opening_hours");
		product_name= multi.getParameter("product_name");
		place_name= multi.getParameter("place_name");
		place_addr=multi.getParameter("place_addr");
		tel =multi.getParameter("tel");
		pro_desc = multi.getParameter("pro_desc");
		pro_content=multi.getParameter("pro_content");
		price = Integer.parseInt(multi.getParameter("price"));
		tmp_day=multi.getParameter("pro_day");
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
		java.util.Date dateLatestLoginDate = formatter.parse(tmp_day);
		// java.util.Date 를 java.sql.Timestamp 로 변환한다.
		java.sql.Timestamp tsTime = new java.sql.Timestamp( dateLatestLoginDate.getTime() ) ;
		pro_day=tsTime;
	    
    	System.out.println("========공연 수정하기 =======");
	    System.out.println("productId="+productId);
	    System.out.println("========공연 수정하기 =======");
	    mav.setViewName("perform/performPro");
    	
		proDTO.setOpening_hours(opening_hours);
		proDTO.setProduct_name(product_name);
		proDTO.setPlace_name(place_name);
		proDTO.setPlace_addr(place_addr);
		proDTO.setTel(tel);
		proDTO.setPro_desc(pro_desc);
		proDTO.setPro_desc(pro_desc);
		proDTO.setPro_content(pro_content);
		proDTO.setPrice(price);
		proDTO.setPro_day(pro_day);
		proDTO.setProduct_id(Integer.parseInt(productId));
		
		performdao.updateProduct(proDTO);
		
		
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()){ 
            String file1 = (String)files.nextElement();
            originalName1 = 	multi.getOriginalFileName(file1);
            
            if(filecount==0) {
            fileName1 = multi.getFilesystemName(file1);
            }else {
            fileinfoname = multi.getFilesystemName(file1);
            }
           
            fileType = multi.getContentType(file1);
            // input file name에 해당하는 실재 파일을 가져옴
          //  File file = multi.getFile(file1);
            // 그 파일 객체의 크기를 알아냄
          //  fileSize = file.length();
            
       
            if(filecount==0) {
	        	  System.out.println("PerformInsertAction() fileupload=>"+fileName1);
	          }else {
	        	  System.out.println("PerformInsertAction() fileupload=>"+fileinfoname);
	          }
            
          filecount=filecount+1;  
        
		} 
		
		if(fileName1!=null && fileinfoname!=null ) {
			System.out.println("파일이 변경되었습니다");
			fileDTO.setProduct_id(Integer.parseInt(productId)); 
			fileDTO.setFile_name(fileName1);
			fileDTO.setFileinfo_name(fileinfoname);
			performdao.updateFileInfo(fileDTO);
		}
	    return mav; 
    }
	
	@RequestMapping(value="performdelete.do",method=RequestMethod.GET)
	public String performdelete(HttpServletRequest request) {
		String url="perform/performdelete";
		String pronum=request.getParameter("pronum");
		request.setAttribute("pronum", pronum);
		return url;
	}
	
	@RequestMapping(value="performdelete.do",method=RequestMethod.POST)
	public String performdeletePost(HttpServletRequest request) {
		String url="redirect:perform.do";
		String pronum=request.getParameter("pronum");
		System.out.println("=== 공연삭제 하기 =====");
		System.out.println("pronum:=>"+pronum);
		performdao.filedelete(pronum);
		performdao.performdelete(pronum);
		System.out.println("=====공연 삭제 하기======");
		request.setAttribute("pronum", pronum);
		return url;
	}
	
	
}
