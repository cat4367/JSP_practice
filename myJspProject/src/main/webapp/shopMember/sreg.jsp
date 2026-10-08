<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./style.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="sheader.jsp" flush="false"></jsp:include>
	<h2>홈쇼핑 회원 등록</h2>
	<main>
		<form>
			<div>
				<label for="num" >회원번호(자동발행)</label>
				<input id="num" type="text"	disabled="disabled">
			</div>
			<div>
				<label for="num1" >회원성명</label>
				<input id="num1" type="text">
			</div>
			<div>
				<label for="num2" >회원전화</label>
				<input id="num2" type="text" placeholder="010-1234-5678">
			</div>
			<div>
				<label for="num3" >회원주소</label>
				<input id="num3" type="text">
			</div>
			<div>
				<label for="num4" >가입일자</label>
				<input id="num4" type="text" placeholder="YYYYMMDD">
			</div>
			<div>
				<label for="num5" >고객등급<text style="font-size: 0.5em;">[A:VIP,B:일반,C:직원]</text></label>
				<input id="num5" type="text" placeholder="A / B / C">
			</div>
			<div>
				<label for="num6" >도시코드</label>
				<input id="num6" type="text" placeholder="예: 01">
			</div>
			<input type="submit" class="submit" value="등록">
			<input type="submit" class="submit" value="조회">
		</form>
	</main>

<jsp:include page="sfooter.jsp" flush="false"></jsp:include>
</body>
</html>