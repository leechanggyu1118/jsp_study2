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
	<h1>Board Modify Page</h1>
	<form action="/brd/update" method="post" enctype="multipart/form-data">
		<img alt="" src="/_fileUpload/_th_${bvo.imageFile }">
	<table border="1" class="table table-dark table-striped">
		<tr>
			<th>Bno</th>
			<td><input type="text" name="bno" value="${bvo.bno }" readonly="readonly"></td>
		</tr>
		<tr>
			<th>Title</th>
			<td><input type="text" name="title" value="${bvo.title}"></td>
		</tr>
		<tr>
			<th>Writer</th>
			<td><input type="text" name="writer" value="${bvo.writer}" readonly="readonly"></td>
		</tr>
		<tr>
			<th>Regdate</th>
			<td><input type="text" name="regdate" value="${bvo.regdate}" readonly="readonly"></td>
		</tr>
		<tr>
			<th>Moddate</th>
			<td><input type="text" name="moddate" value="${bvo.moddate}" readonly="readonly"></td>
		</tr>
		<tr>
			<th>Content</th>
			<td> <textarea rows="10" cols="30" name="content">${bvo.content }</textarea> </td>
		</tr>
		
		<tr>
			<th>ImageFile</th>
			<td>
				<input type="hidden" name="imageFile" value="${bvo.imageFile}">
				<input type="file" name="new_file">
			</td>
		</tr>
		
	</table>
	<button type="submit" class="btn btn-success">수정</button>
	</form>
	<a href="/brd/list"> <button type="button" class="btn btn-dark">메인페이지</button> </a>

</body>
</html>