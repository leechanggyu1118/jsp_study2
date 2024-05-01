<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body class="p-3 mb-2 bg-secondary text-white">
<h1>Board Register Page</h1>

<form action="/brd/insert" method="post" enctype="multipart/form-data">
<div class="mb-3 row">
	Title : <input class="form-control" type="text" name="title"> <br>
	Writer : <input class="form-control" type="text" name="writer" value="${ses.id }" readonly="readonly"> <br>
	Content : <textarea class="form-control" rows="10" cols="30" name="content"></textarea> <br>
	첨부파일 : <input class="form-control" type="file" name="imageFile" accept="image/png, image/jpg, image/gif, image/jpeg"> <br>
	</div>
	<button type="submit" class="btn btn-success">게시판 등록</button>
		<a href="/brd/list"> <button type="button" class="btn btn-dark">게시판 페이지</button> </a>
			<a href="../index.jsp"> <button type="button" class="btn btn-dark">메인페이지</button> </a>
	
</form>
</body>
</html>