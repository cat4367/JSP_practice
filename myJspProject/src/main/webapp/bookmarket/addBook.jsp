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
		String greeting = "도서등록";
	%>

	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold"><%=greeting %></h1>
			<p class="col-md-8 fs-4">AddBook</p>
		</div>
	</div>
	
	<div class="row align-items-md-stretch">
		<form name="newBook" action="./processAddBook.jsp" method="post" onsubmit="return false;">
			<div class="mb-3 row">
				<label class="col-sm-2">도서코드</label>
				<div class="col-sm-3">
					<input type="text" name="bookId" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">도서명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">저자</label>
				<div class="col-sm-3">
					<input type="text" name="author" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">출판사</label>
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">출판일</label>
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control" placeholder="100자 이상 적어주세요"></textarea>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">재고수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New"> 신규도서
					<input type="radio" name="condition" value="Old"> 중고도서
					<input type="radio" name="condition" value="EBook"> E-Book
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
	let bId = document.newBook.bookId.value;
	let bname = document.newBook.name.value;
	let bauthor = document.newBook.author.value;
	let bpublisher = document.newBook.publisher.value;
	let brelease = document.newBook.releaseDate.value;
	let bdescription = document.newBook.description.value;
	let bprice = document.newBook.unitPrice.value;
	
	
	if(bId == ""){
		alert("도서코드 입력해주세요.");
		document.newBook.bookId.focus();
		return false;
	}
	if(bname == ""){
		alert("도서명을 입력해주세요.");
		document.newBook.name.focus();
		return false;
	}
	if(bprice == ""){
		alert("가격을 입력해주세요.");
		document.newBook.unitPrice.focus();
		return false;
	}
	if(bauthor == ""){
		alert("저자를 입력해주세요.");
		document.newBook.author.focus();
		return false;
	}
	if(bpublisher == ""){
		alert("출판사를 입력해주세요.");
		document.newBook.publisher.focus();
		return false;
	}
	if(brelease == ""){
		alert("출판일을 입력해주세요.");
		document.newBook.releaseDate.focus();
		return false;
	}
	if(bdescription == ""){
		alert("상세정보를 입력해주세요.");
		document.newBook.description.focus();
		return false;
	}else if(bdescription.length < 100){
		alert("100글자 이상 입력해 주세요.")
		document.newBook.description.focus();
		return false;
	}
	
	
	document.newBook.submit();
}
</script>
</html>