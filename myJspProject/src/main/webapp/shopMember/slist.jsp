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
<main>
	<h2>회원목록조회 / 수정</h2>
	<table>
		<thead>
			<th scope="col">회원번호</th>
			<th scope="col">회원성명</th>
			<th scope="col">전화번호</th>
			<th scope="col">주소</th>
			<th scope="col">가입일자</th>
			<th scope="col">고객등급</th>
			<th scope="col">거주지역</th>
		</thead>
		<tbody>
			<tr>
				<td>M000001</td>
				<td>홍길동</td>
				<td>010-1111-2222</td>
				<td>광주시</td>
				<td>2026-10-08</td>
				<td>일반</td>
				<td>광주시</td>
			</tr>
			<tr>
				<td>M000002</td>
				<td>임꺽정</td>
				<td>010-1234-5678</td>
				<td>서울시</td>
				<td>2026-10-05</td>
				<td>일반</td>
				<td>대전시</td>
			</tr>
			<tr>
				<td>M000003</td>
				<td>성춘향</td>
				<td>010-9999-8888</td>
				<td>강릉시</td>
				<td>2026-10-01</td>
				<td>VIP</td>
				<td>광주시</td>
			</tr>
			<tr>
				<td>M000004</td>
				<td>김연아</td>
				<td>010-3333-4444</td>
				<td>인천시</td>
				<td>2026-10-03</td>
				<td>일반</td>
				<td>서울시</td>
			</tr>
		</tbody>
	</table>
</main>

<jsp:include page="sfooter.jsp" flush="false"></jsp:include>
</body>
</html>