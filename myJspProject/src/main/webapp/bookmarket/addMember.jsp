<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
		<%! 
		String greeting = "멤버추가";
	%>

	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">AddMember</p>
		</div>
	</div>
	<h3 class="fw-bold text-center"> 회원 정보를 입력해주세요.</h3>
	<div class="row align-items-md-stretch">
		<form name="newMember" action="./processAddMember.jsp" method="post">
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">ID</label>
				<div class="col-sm-3">
					<input type="text" name="memberId" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">Password</label>
				<div class="col-sm-3">
					<input type="text" name="memberPwd" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">성명</label>
				<div class="col-sm-3">
					<input type="text" name="memberName" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">성별</label>
				<div class="col-sm-5">
					<input type="radio" name="memberGender" value="M">남자(M) 
					<input type="radio" name="memberGender" value="F">여자(F)					
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">나이</label>
				<div class="col-sm-3">
					<input type="text" name="memberAge" class="form-control">
				</div>
			</div>
			<div class="mb-3 row align-items-center">
				<label class="col-sm-2 fw-bold">연락처</label>
					<div class="col-sm-10">
						<div class="row g-2 align-items-center" style="width: 268px">
						<div class="col">
						<select name="memberTel1" class="form-select" style="width: auto;">
							<option value=" " label="선택">
							<option value="010" label="010">
							<option value="011" label="011">
							<option value="012" label="012">
							<option value="013" label="013">
						</select>
						</div>
						<div class="col-auto text-center">-</div>
						<div class="col"><input type="text" name="memberTel2" maxlength="4" class="form-control"></div>
						<div class="col-auto text-center">-</div>
						<div class="col"><input type="text" name="memberTel3" maxlength="4" class="form-control"></div>
						</div>
					</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">E-mail</label>
				<div class="col-sm-3">
					<input type="text" name="memberEmail1" class="form-control">
				</div>
				<div class="col-auto text-center fs-5" style="padding-left: 0px; padding-right: 0px;">@</div>
				<div class="col-sm-3">
					<select name="memberEmail2" class="form-select">
						<option value="" label="선택하세요.">
						<option value="naver.com" label="naver.com">
						<option value="google.com" label="google.com">
						<option value="daum.net" label="daum.net">
					</select>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">생년월일</label>
				<div class="col-sm-3">
					<input type="text" name="memberBirth" class="form-control" placeholder="ex)2000-01-01">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">회원등급</label>
				<div class="col-sm-5">
					<input type="radio" name="memberCls" value="N"> 일반 
					<input type="radio" name="memberCls" value="V"> VIP					
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">신발사이즈</label>
				<div class="col-sm-3">
					<input type="text" name="memberFootSize" class="form-control">
				</div>
			</div>

			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
	



<jsp:include page="footer.jsp"/>
</body>
</html>