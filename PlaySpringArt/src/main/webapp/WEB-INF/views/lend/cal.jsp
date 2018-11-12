<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@page import="org.apache.catalina.ant.SessionsTask"%> --%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.Calendar"%>

<%@page import="com.play.lend.*" %>

<%@page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%

Calendar cal = Calendar.getInstance();
String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
if(strYear != null) {
  year = Integer.parseInt(strYear);
  month = Integer.parseInt(strMonth);
}

//년도/월 셋팅
cal.set(year, month, 1);
int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;

//오늘 날짜 저장.
Calendar todayCal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));

%>

<html lang="ko">
<HEAD>
       <TITLE>캘린더</TITLE>
       <meta http-equiv="content-type" content="text/html; charset=utf-8">
       <script type="text/javaScript" language="javascript"></script>
              <style TYPE="text/css">
             body {
             scrollbar-face-color: #F6F6F6;
             scrollbar-highlight-color: #bbbbbb;
             scrollbar-3dlight-color: #FFFFFF;
             scrollbar-shadow-color: #bbbbbb;
             scrollbar-darkshadow-color: #FFFFFF;
             scrollbar-track-color: #FFFFFF;
             scrollbar-arrow-color: #bbbbbb;
             margin-left:"0px"; margin-right:"0px"; margin-top:"0px"; margin-bottom:"0px";
             }
             td {font-family: "돋움"; font-size: 9pt; color:#595959;}
             th {font-family: "돋움"; font-size: 11pt; color:#000000;}
             select {font-family: "돋움"; font-size: 9pt; color:#595959;}
             .divDotText {
             overflow:hidden;
             text-overflow:ellipsis;
             }
             
             
            A:link { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
            A:visited { font-size:9pt; font-family:"돋움";color:#000000; text-decoration:none; }
            A:active { font-size:9pt; font-family:"돋움";color:red; text-decoration:none; }
            A:hover { font-size:9pt; font-family:"돋움";color:red;text-decoration:none;}
       </style>
</HEAD>

<BODY>




	<form name="calendarFrm" id="calendarFrm" action="" method="post">
<DIV id="content" style="width:111%;">

<!--날짜 네비게이션  -->
<table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#F3F9D7" style="border:1px solid #CED99C">
<tr>
<td height="60">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
       <tr>
             <td height="10"></td>
       </tr>
       <tr>
             <th align="center" >
					<center>공간 연습실<br>
					 11월 예약 현황</center>&nbsp;&nbsp;
             </th>
       </tr>
       </table>
</td>
</tr>
</table>

<br>

<table width="100%" border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF" class="table">
<THEAD>
<TR bgcolor="white">
       <TH height="35px">
       <DIV align="center"><font color="red">일</font></DIV>
       </TH>
       <TH height="35px">
       <DIV align="center">월</DIV>
       </TH>
       <TH height="35px">
       <DIV align="center">화</DIV>
       </TH>
       <TH height="35px">
       <DIV align="center">수</DIV>
       </TH>
       <TH height="35px">
       <DIV align="center">목</DIV>
       </TH>
       <TH height="35px">
       <DIV align="center">금</DIV>
       </TH>
       <TH height="35px">
       <DIV align="center"><font color="blue">토</font></DIV>
       </TH>
</TR>
</THEAD>
<TBODY>
<TR>
<%
//처음 빈공란 표시
for(int index = 1; index < start ; index++ ) {
  out.println("<TD >&nbsp;</TD>");
  newLine++;
}
       
for(int index = 1; index <= endDay; index++) {
       String color = "";
       if(newLine == 0){      
    	   color = "RED";
       }else if(newLine == 6){    
    	   color = "#529dbc";
       }else{                     
    	   color = "BLACK"; 
       }

       String sUseDate = Integer.toString(year); 
       sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
       sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);
       int iUseDate = Integer.parseInt(sUseDate);
       String backColor = "white";
       
       if(iUseDate == intToday ) {
             backColor = "#e1f8ec";
       }

       out.println("<TD valign='top' align='left' height='92px' bgcolor='"+backColor+"' nowrap>");
       %>

       <font color='<%=color%>'>
			
			<c:if test="${sessionScope.email=='animuel01@daum.net'}">
             <a href="insertForm11.do?date=<%=index%>"><b><%=index%>일</b></a>
			</c:if>
			
			<c:if test="${sessionScope.email!='animuel01@daum.net'}">
             <b><%=index%>일</b>
			</c:if>
			
       </font>
       <%out.println("<BR>");%>
					<c:set var="i" value="<%=index%>" />
					<c:forEach var="date" items="${date}">
					
					
					<c:set var="d" value="${date.date}" />
					<c:set var="s" value="${date.start}" />
					<c:set var="e" value="${date.end}" />
					<c:set var="b" value="${date.bool}" />
					<c:if test="${i==d}">
					<c:if test="${date!=null}">

					<c:if test="${sessionScope.email=='animuel01@daum.net'}">
        			<span>${s}~${e}
        			<a href="update11.do?date=<%=index%>&start=${s}">${b}</a>
        			<a href="delete11.do?date=<%=index%>&start=${s}">삭제</a></span>
        			<br>
            		</c:if>
            		   		
            		<c:if test="${sessionScope.email!='animuel01@daum.net'}">
            		<span>${s}~${e} ${b}</span>
            		<br>
					</c:if>
					</c:if>
					</c:if>
					
					</c:forEach>
					
					
            		
        			<%
        			out.println("<br>");

			
				//기능 제거 
        		/* out.println("</TD>"); */
        		out.println("</TD>");

        		newLine++;

        		if (newLine == 7)

        		{

        			out.println("</TR>");

        			if (index <= endDay)

        			{

        				out.println("<TR>");

        			}

        			newLine = 0;

        		}

        	}

        	//마지막 공란 LOOP

        	while (newLine > 0 && newLine < 7)

        	{

        		out.println("<TD>&nbsp;</TD>");

        		newLine++;

        	}
        %>

</TR>

 

</TBODY>

</TABLE>

</DIV>

</form>

</BODY>

</HTML>
