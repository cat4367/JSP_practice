<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, java.io.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- JSP 주석 --%>
<!-- HTML 주석 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
<div class="container py-4">
	<jsp:include page="header.jsp" flush="false"/>
	<%! 
		String greeting = "도서 쇼핑몰에 오신 것을 환영합니다";
		String tagline = "Welcome to Web Market!";
	%>
	

	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">BookMarket</p>
		</div>
	</div>
	
	<div class="row align-items-md-stretch	text-center">
		<div class="col-md-12">
			<div class="h-100 p-5">
				<h3><%=tagline %></h3>
				<%
					response.setIntHeader("Refresh", 5);
					
					Date d = new Date();
					int hour = d.getHours();
					int minute = d.getMinutes();
					int second = d.getSeconds();
					String ampm = null;
					
					if(hour > 12){
						ampm = "PM";
						hour = hour - 12;
					}else{
						ampm = "AM";
					}
					
					//10:24:30 AM
					String datetime = (hour < 10 ? "0" + hour : hour) + ":" + (minute <10 ? "0" +  minute : minute) + ":" + (second < 10 ? "0" + second : second) + " " + ampm;
				%>
				<%= "현재 접속 시간 : " + datetime %>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="false"/>
	<%-- 위와 같은 효과인데 차이가 있음 127p
	<%@ include file="header.jsp" %>
	<%@ include file="body.jsp" %>
	<%@ include file="footer.jsp" %>	
	--%>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</html>