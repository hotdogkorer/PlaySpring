<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공언업로드</title>
</head>
<body>
<script type="text/javascript">

document.getElementById('now_date').value =${product.pro_day}; 
</script>

<center>
<h1>공연수정하기</h1>
   <form action="performupdate.do" method="post" enctype="multipart/form-data">
       <input type="hidden" name="update" value="update">
       <input type="hidden" name="productId" value="${product.product_id}">
       
      <table width="600" border="1" cellspacing="0" cellpadding="0"  bgcolor="#e0ffff" align="center">
      
   <tr>
    <td align="right" colspan="2" bgcolor="#b0e0e6">
	    <a href="perform.do"> 공연목록보기</a> 
   </td>
   </tr>
   <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">공연명</td>
    <td  width="330">
       <input type="text" size="40" maxlength="40" name="product_name" value="${product.product_name}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center" >공연시간</td>
    <td  width="330">
       <input type="text" size="40" maxlength="50" name="opening_hours" value="${product.opening_hours}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center" >공연날짜</td>
    <td  width="330">
         
       <input type="date" size="40" maxlength="50" id="'now_date" name="pro_day" value="<fmt:formatDate value="${product.pro_day}" pattern="yyyy-MM-dd"/>" >  <fmt:formatDate value="${product.pro_day}" pattern="yyyy-MM-dd"/></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">장소명</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="place_name" value="${product.place_name}" ></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">장소주소</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="place_addr" value= "${product.place_addr}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">문의전화번호</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="tel" value= "${product.tel}"></td>
  </tr>
  
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center" >공연간단설명</td>
    <td  width="330" >
     <textarea name="pro_desc" rows="3" cols="40">${product.pro_desc}</textarea> </td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center" >공연상세설명</td>
    <td  width="330" >
     <textarea name="pro_content" rows="10" cols="40">${product.pro_content}</textarea> </td>
  </tr>
   <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">입장료</td>
    <td  width="330">
       <input type="price" size="40" maxlength="30" name="price" value="${product.price}" ></td>
  </tr>
    <tr>  
     <td  width="70"  bgcolor="#b0e0e6" align="center" >정보파일</td>
        <td>  
       <input type="file" name="fileName1" value="${product.fileinfoname}"/>${product.fileinfoname}<br/>
        </td>
    </tr>  
     <td  width="70"  bgcolor="#b0e0e6" align="center" >파일명</td>
        <td>  
       <input type="file" name="fileName2" value="${product.filename}" />${product.filename}<br/>
        </td>
    </tr>                       
       </table>
        <input type="submit" value="전송" />  
        <input type="reset" value="취소" />
    </form>

</center>
</body>
</html>
<%-- <%@ include file="../footer.jsp"%>    --%>