<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form01</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="form01_process.jsp" name="member" method="get">
		<p> 아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복 검사">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> 이름 : <input type="text" name="name">
		<p> 연락처 : <select name="phone">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="012">012</option>
						<option value="013">013</option>
						<option value="014">014</option>
		</select> - <input type="text" maxlength="4" size="4" name="phone"> - <input type="text" maxlength="4" size="4" name="phone">
		<p> 성별 : <input type="radio" name="sex" value="남성" checked>남성<input type="radio" name="sex" value="여성">여성
		<p> 취미 : 독서<input type="checkbox" name="hobby" value="독서" checked>
					운동<input type="checkbox" name="hobby" value="운동">
					영화<input type="checkbox" name="hobby" value="영화">
		<p> <textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력해 주세요"></textarea>
		<p> <input type="submit" value="가입하기">
			<input type="reset" value="다시쓰기">
		 
	</form>
</body>
</html>