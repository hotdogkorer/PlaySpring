<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../top.jsp"%> 

<c:if test="${sessionScope.email== null }">
   <script type="text/javascript">
		alert('로그인 후 이용가능합니다.');
		location.href="login.do";
	</script>
</c:if>   
 
<script type="text/javascript">
 $(function(){
   $('body').addClass("tickets-page");
 })
</script>
 <script type="text/javascript">
 $(function(){
	   setInterval(function() {
			  history.go(0);	    	   		
		}, 30000);
 })
</script>

<script type="text/javascript">
	function sitCheck() {
		
		var num = Number(f.count.value);
		var chk = document.getElementsByName("sitChoice");
		var len = chk.length
		var checkRow = ''; //체크된 체크박스의 value를 담기위한 변수
		var checkLast = '';
		var checkCnt = 0; //체크된 체크박스의 개수
		var rowid = ''; //체크된 체크박스의 모든 value 값을 담는다
		var cnt = 0;

		// alert("카운트"+num);
		for (var m = 0; m < len; m++) {
			if (chk[m].checked == true) {
				checkCnt++; //체크된 체크박스의 개수
				checkLast = m;
			}
		}

		var chkCnt = Number(checkCnt);

		for (var n = 0; n < len; n++) {
			if (chk[n].checked == true) { //체크가 되어있는 값 구분
				checkRow = chk[n].value;

				if (checkCnt == 1) { //체크된 체크박스의 개수가 한 개 일때,
					rowid += checkRow;
				} else { //체크된 체크박스의 개수가 여러 개 일때,
					if (n == checkLast) { //체크된 체크박스 중 마지막 체크박스일 때,
						rowid += checkRow;
					} else {
						rowid += checkRow + ",";
					}

				}
				cnt++;
				checkRow = ''; //checkRow초기화.
			}

		}
		
		if(	checkCnt> num){
			alert('한번에 '+num+'표 이상 예매하실 수 없습니다');
			return;
		} 

		if(	checkCnt< num){
			alert('예매가 끝나지 않았습니다');
			return;
		}  
		
		
		
		if(checkCnt==0){
			alert('최소한 한번의 좌석을 예메 해야합니다');
		 return;
		}
		 	//alert('rowid : ' + rowid); 
	
		
   //alert("선택"+rowid);
		f.sit.value = rowid;
      //  alert("좌석 예매"+f.sit.value);

	//	document.f.action = "client_cashReserve.do";
		document.f.action = "reservacash.do";
	    document.f.method = "post";
		document.f.submit();

	}

	function imgCbox(N, tabstop) {
		var objs, cboxes, Img, Span, A;

		objs = document.getElementsByTagName("INPUT");
		if (N == undefined)
			return false;
		if (tabstop == undefined)
			tabstop = true;

		for (var i = 0; i < objs.length; i++) {
			if (objs[i].type != "checkbox" || objs[i].name != N)
				continue;

			if (imgCbox.Objs[N] == undefined) {
				imgCbox.Objs[N] = [];
				imgCbox.Imgs[N] = [];
				imgCbox.ImgObjs[N] = [];
			}

			var len = imgCbox.Objs[N].length;
			imgCbox.Objs[N][len] = objs[i];
			imgCbox.Imgs[N][len] = {};

			// for image cache
			(Img = new Image()).src = objs[i].getAttribute("onsrc");
			imgCbox.Imgs[N][len]["on"] = Img;

			(Img = new Image()).src = objs[i].getAttribute("offsrc");
			imgCbox.Imgs[N][len]["off"] = Img;

			// image element
			Img = document.createElement("IMG");
			Img.src = objs[i].checked ? objs[i].getAttribute("onsrc") : objs[i]
					.getAttribute("offsrc");
			Img.style.borderWidth = "0px";
			Img.onclick = new Function("imgCbox.onclick('" + N + "','" + len
					+ "')");
			imgCbox.ImgObjs[N][len] = Img;

			// anchor element for tab stop
			A = document.createElement("A");
			if (tabstop) {
				A.href = "javascript:;";
				A.onkeypress = new Function("evt",
						"if(evt==undefined)evt=event;if(evt.keyCode==13){ imgCbox.onclick('"
								+ N + "','" + len + "'); }");
			}
			A.style.borderWidth = "0px";
			A.appendChild(Img);

			// insert object
			Span = objs[i].parentNode;
			Span.style.display = "none";
			Span.parentNode.insertBefore(A, Span);
		}
	}
	imgCbox.onclick = function(N, idx) {
		var C = imgCbox.Objs[N][idx];
		var I = imgCbox.ImgObjs[N][idx];

		C.checked = !C.checked;
		I.src = imgCbox.Imgs[N][idx][C.checked ? "on" : "off"].src;

		// fire event
		if (C.onclick != undefined || C.onclick != null)
			C.onclick();
	}
	imgCbox.Objs = {};
	imgCbox.Imgs = {};
	imgCbox.ImgObjs = {};
</script>

 


<div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">공연좌석예매</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li>공연예매>좌석선택</li>
                            
                        </ul><!-- .breadcrumbs -->
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div>

  <div class="main-content">
        <div class="container">
        <form name="f">
        	<input  type="hidden" name="sit">
        	<input  type="hidden" name="count" value="${count}">
        	<input  type="hidden" name="pronum" value="${pronum}">
        	<div style="padding-left: 120px; color:black;">

			 선택 가능한 좌석수: <c:out value="${count}" />
			</div>
        	<div align="right" style="padding-right: 40px; color:black;">
				<img src="<%=request.getContextPath()%>/resources/sitImg/out.png"
					width="20px">예약불가 <img
					src="<%=request.getContextPath()%>/resources/sitImg/off.png"
					width="20px"> 선택가능 <img
					src="<%=request.getContextPath()%>/resources/sitImg/on.png"
					width="20px"> 선택상태
			</div>
 			<div	style="padding-left: 40px; padding-right: 40px; padding-top: 30px">
 			  	<table width="90%" align="center">
 			  	<tr>
					<td colspan="2" align="center"
						style="background-color: gray; height: 50px">공연무대</td>
				</tr>
				<tr>
					<td colspan="2"><br></td>
				</tr>
				<tr>
						<td align="center"><c:set var="count" value="0" /> <c:set
							var="tdCount" value="0" /> <c:forEach var="entry" items="${sit}">
							<c:choose>
								<c:when test="${entry.value==1 }">
									<img
										src="<%=request.getContextPath()%>/resources/sitImg/${entry.key }.png">
								</c:when>
								<c:otherwise>
									<span> <input type="checkbox" name="sitChoice"
										value="${entry.key}"
										offsrc="<%=request.getContextPath()%>/resources/sitImg/${entry.key }_off.png"
										onsrc="<%=request.getContextPath()%>/resources/sitImg/${entry.key }_on.png" />
										${entry.key }
									</span>
								</c:otherwise>
							</c:choose>

							<c:set var="count" value="${count+1}" />
							<c:set var="tdCount" value="${tdCount+1}" />
							<c:choose>
								<c:when test="${count %8 ==0.0 }"></td>
				</tr>
				<tr>
					<td align="center"></c:when> <c:otherwise>
							<c:if test="${tdCount %4 ==0.0 }"></td>
					<td align="center"></c:if> </c:otherwise> </c:choose> </c:forEach> <script>
						imgCbox("sitChoice");
					</script></td>
				</tr>
			</table>
			<center>
			<div
			style="padding-right: 90px; padding-top: 70px; padding-bottom: 70px"
				align="center">
			<a href="javascript:sitCheck()" class="btn btn-primary"> 선택완료 </a>
			&nbsp;&nbsp;&nbsp;
				<a href="<%=request.getContextPath()%>/reservation.do?pronum=${pronum}" class="btn btn-primary"> 뒤로 </a>
			</div>
			</center>
 			</div>
 			</form>
        </div>
 </div>
<%@ include file="../footer.jsp"%>  