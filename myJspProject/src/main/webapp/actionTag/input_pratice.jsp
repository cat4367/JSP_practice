<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="process.jsp" method="get">
	이름 : <input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요" maxlength="10" required><br>
	성별 : 
	<input type="radio" id="gender_m" name="gender" value="M"><label for="gender_m">남자</label>
	<input type="radio" id="gender_f" name="gender" value="F"><label for="gender_f">여자</label><br>
	좋아하는과일 : 
	<input type="checkbox" id="chk_1" name="chk" value="apple"><label for="chk_1">사과</label>
	<input type="checkbox" id="chk_2" name="chk" value="orange"><label for="chk_2">오렌지</label>
	<input type="checkbox" id="chk_3" name="chk" value="banana"><label for="chk_3">바나나</label><br>
	<input type="hidden" name="inputHdn" value="hidden123123">
	
	
	<input type="submit" value="확인">
	<input type="reset" value="초기화">
</form>
</body>
</html>