<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body class="p-3 mb-2 bg-secondary text-white">
	<h1>Member List Page (관리자용)</h1>
	<table border="1" class="table">
	<tr>
		<th>ID</th>
		<th>PassWord</th>
		<th>E-Mail</th>
		<th>Age</th>
		<th>Phone</th>
		<th>Regdate</th>
		<th>LastLogin</th>
	</tr>
	<c:forEach items="${list }" var="mvo">
	
	<tr>
		<th>${mvo.id }</th>
		<th>${mvo.pwd }</th>
		<th>${mvo.email }</th>
		<th>${mvo.age }</th>
		<th>${mvo.phone }</th>
		<th>${mvo.regdate }</th>
		<th>${mvo.lastlogin }</th>
	</tr>
	</c:forEach>
	
	</table>
	
	<a href="../index.jsp"> <button type="button" class="btn btn-dark">메인페이지</button> </a>

</body>
</html>