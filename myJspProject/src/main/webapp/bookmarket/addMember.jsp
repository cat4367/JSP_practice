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
		<form name="newMember" action="./processAddMember.jsp" method="post" onsubmit="return false;">
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">ID</label>
				<div class="col-sm-3">
					<input type="text" name="memberId" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">Password</label>
				<div class="col-sm-3">
					<input type="password" name="memberPwd" class="form-control" placeholder="영어,숫자,특수문자 반드시 포함!">
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
				<div class="col-sm-5" style="height: 38px">
					<input type="radio" name="memberGender" value="M">남자(M) 
					<input type="radio" name="memberGender" value="F">여자(F)					
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 fw-bold">나이</label>
				<div class="col-sm-1">
					<input type="number" name="memberAge" class="form-control">
				</div>
			</div>
			<div class="mb-3 row align-items-center">
				<label class="col-sm-2 fw-bold">연락처</label>
					<div class="col-sm-10">
						<div class="row g-2 align-items-center" style="width: 313px">
						<div class="col">
						<select name="memberTel1" class="form-select" style="width: auto;">
							<option value="" label="선택">
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
				<div class="col-sm-5" style="height: 38px">
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
					<input type="submit" class="btn btn-primary" value="등록" onclick="form_submit()">
				</div>
			</div>
		</form>
	</div>
	



<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript">

function form_submit(){
	const regex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,}$/
	let m_id = document.newMember.memberId.value;
	let m_pwd = document.newMember.memberPwd.value;
	let m_name = document.newMember.memberName.value;
	let m_gender = document.newMember.memberGender.value;
	let m_tel = document.newMember["memberTel" + 1].value;
	
	console.log("확인");
	for(let i = 1;i <= 3; i++){
		let m_tel = document.newMember["memberTel" + i];
		console.log(m_tel);
		if(m_tel == ""){
			alert("휴대폰번호" + i + "번째 칸을 입력해주세요.")
			m_tel.focus();
			return false;
		}
	}
	
	if(m_id == ""){
		alert("ID를 입력해주세요.");
		document.newMember.memberId.focus();
		return false;
	}
	if(m_pwd == ""){
		alert("패스워드를 입력해주세요.");
		document.newMember.memberPwd.focus();
		return false;
	}else if(m_pwd.length < 10){
		alert("10자 이상 입력해주세요");
		document.newMember.memberPwd.focus();
		return false;
	}else if(!regex.test(m_pwd)){
		alert("패스워드 형식이 잘못 되었습니다.");
		document.newMember.memberPwd.focus();
		return false;
	}
	if(m_name == ""){
		alert("이름을 입력해주세요.");
		document.newMember.memberName.focus();
		return false;
	}
	if(m_gender == ""){
		alert("성별을 선택해주세요.")
		document.newMember.memberGender.focuse();
		return false;
	}
	if(m_gender == ""){
		alert("성별을 선택해주세요.")
		document.newMember.memberGender.focuse();
		return false;
	}
	if(m_gender == ""){
		alert("성별을 선택해주세요.")
		document.newMember.memberGender.focuse();
		return false;
	}
	
	document.newMember.submit();
}
</script>
</html>