<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String[] phone = request.getParameterValues("phone");
	String sex = request.getParameter("sex");
	String[] hobby = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
%>

<h2>환영합니다!</h2>
<p><%= id %> [<%=name%>]님 가입이 정상적으로 되었습니다!
<p>연락처 : <%
		if(phone != null){
			for(String p : phone){
				out.print(p + " ");
			}
		}
%>
<p>성별 : <%=sex%>
<p>취미 : <%
		if(hobby != null){
			for(String h : hobby){
				out.print(" " + h);
			}
		}
%>
<p>가입인사 : <%=comment%>
</body>
</html>