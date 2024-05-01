<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body class="p-3 mb-2 bg-secondary text-white">
	<h1 class="container-sm">Board MyList Page</h1>
	
	<!-- 검색 라인  -->
	<div class="container-sm">
		<form action="/brd/list" method="get">
			<div>
				<select name="type">
					<option ${ph.pgvo.type eq null ? "selected" : "" }>Choose...</option>
					<option value="t" ${ph.pgvo.type eq "t" ? "selected" : "" }>Title</option>
					<option value="w" ${ph.pgvo.type eq "w" ? "selected" : "" }>Title>Writer</option>
					<option value="c" ${ph.pgvo.type eq "c" ? "selected" : "" }>Title>Content</option>
				</select>
				
				<input type="text" name="keyword" placeholder="Search" value="${ph.pgvo.keyword }">
				<input type="hidden" name="pageNo" value="1" >
				<input type="hidden" name="qty" value="${ph.pgvo.qty }" >
				<button type="submit">Search</button>
				<span>totalCount : ${ph.totalCount }</span>
			</div>
			</form>
	</div>

	<div  class="container-sm">
	<table class="table table-dark table-striped">
		<tr>
			<th>Bno</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Regdate</th>
			<th>ReadCount</th>
		</tr>
		
		<!-- DB에서 가져온 리스트를  c:foreach를 통해서 반복출력  -->
		<c:forEach items="${list }" var="bvo">
			<tr>
				<td><a href="/brd/detail?bno=${bvo.bno }">${bvo.bno }</a></td>
				<td><a href="/brd/detail?bno=${bvo.bno }"> <img alt="" src="/_fileUpload/_th_${bvo.imageFile }"> ${bvo.title }</a></td>
				<td>${bvo.writer }</td>
				<td>${bvo.regdate }</td>
				<td>${bvo.readCount }</td>

			</tr>
		</c:forEach>

	</table>
	
	
	<a href="../index.jsp"> <button type="button" class="btn btn-dark">메인페이지</button> </a>
	<a href="/brd/list"> <button class="btn btn-outline-light" type="button">공용게시판페이지</button></a>
			<a href="/brd/register"><button  class="btn btn-primary" type="button">글쓰기 페이지</button></a>


	<!-- Paing Line => ph  -->
	<div class="container-sm">
		<!-- prev  -->
		<c:if test="${ph.prev }">
		 <a href="/brd/searchMy?pageNo=${ph.startPage-1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"><button type="button" class="btn btn-outline-dark"> ⇐ </button></a>
		 
		 </c:if>
		<!-- paging  -->
		<c:forEach begin="${ph.startPage }" end="${ph.endPage }" var="i">
			<a href="/brd/searchMy?pageNo=${i }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"><button type="button" class="btn btn-outline-dark"> ${i }</button></a>
			
		</c:forEach>
		<!-- next  -->
		<c:if test="${ph.next }">
		  <a href="/brd/searchMy?pageNo=${ph.endPage+1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"><button type="button" class="btn btn-outline-dark"> ⇒ </button></a>
		  
		</c:if>
	</div>
	
	


	</div>






	<script type="text/javascript">
	const brd_modify = `<c:out value="${brd_modify }"></c:out>`;
	console.log(brd_modify);
	if(brd_modify =="ok"){
		alert("게시물 수정을 완료하였습니다.");
	}
	
	
	</script>
</body>
</html>