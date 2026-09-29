<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello JSP!!</h1>
	Hello! Java Server Pages.
	
	<h2>Scripting Tag</h2>
	<%! int count = 3;	%> <!--  전역변수 -->
	<%  int z = 10;		%> <!--  지역변수 -->
	
	<%!
	String makeItLower(String data){
		return data.toLowerCase();
	}
	%>
	
	<%
		for(int i = 1; i <= count; i++){
			out.println("Java Server Pages" + i + ".<br>");
		}
	%>
	
	<%= makeItLower("Hello World") %>
	<br>
	<% out.print(myMethod(0)); %>
	<br>
	<%!
		public int myMethod(int count){
			return ++count;
		}
	%>
	
	<%  int a = 10;		%>
	<%
		for(int i = 0; i <a; i++){
			out.println(i + "번째 입니다.<br>");
		}
	%>
	
	<%= a + count %>
	<%! String str = "Hi~"; %>
	<%= str %>
	
	
	
	<c:out value="JSTL Core 태그 라이브러리"/><br>			<%-- 보여주는 태그 --%>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:if test="${i % 2 == 0}">
			<c:out value="${i}번째 입니다."/><br>
		</c:if>
	</c:forEach>
	<c:set var="a" value="10"/>							<%-- <%!int a =10%> --%>
	<c:out value="${a }"/>								<%-- <%= a %> --%>
	
	
	
	
</body>
</html>