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
	<h1>Board detail Page</h1>

	<table class="table table-dark table-striped">
		<tr>
			<th>Bno</th>
			<td>${bvo.bno }</td>
		</tr>
		<tr>
			<th>Title</th>
			<td>${bvo.title}</td>
		</tr>
		<tr>
			<th>Writer</th>
			<td>${bvo.writer}</td>
		</tr>
		<tr>
			<th>Regdate</th>
			<td>${bvo.regdate}</td>
		</tr>
		<tr>
			<th>Moddate</th>
			<td>${bvo.moddate}</td>
		</tr>
		<tr>
			<th>Content</th>
			<td>${bvo.content}</td>
		</tr>
	</table>
	
	<a href="/brd/list"> <button type="button" class="btn btn-dark">게시판 페이지</button> </a>
	
	<c:if test="${bvo.writer eq ses.id }">
	<a href="brd/modify?bno=${bvo.bno }"><button type="submit" class="btn btn-success">수정</button></a>
	<a href="brd/delete?bno=${bvo.bno }"><button class="btn btn-danger" type="button">삭제</button></a>
	</c:if>
	<script type="text/javascript">
	const brd_modify = `<c:out value="${brd_modify }"></c:out>`;
	console.log(brd_modify);
	if(brd_modify =="fail"){
		alert("게시물 수정을 실패하였습니다. 다시 시도해주세요.");
	}
	</script>
	
		<!-- comment line  -->
	<hr>
	<div>
	comment line <br>
	<input type="text" id="cmtWriter" value="${ses.id }" readonly="readonly"> <br>
	<input type="text" id="cmtText" placeholder="Add Comment...">
		<button type="button" id="cmtAddBtn" class="btn btn-primary">comment post</button>
	</div>
	<br>
	<hr>
	
	
	
	
	
	<!-- 댓글 출력  -->
	
	<div id="commentLine">
		<div>
			<div>Cno, Bno, Writer, Regdate</div>
			<div>
				<button>수정</button>
				<button>삭제</button>
				<br>
				<input type="text" value="content">
			</div>	
		</div>	
	</div>
	
	<script type="text/javascript">
	const bnoVal = `<c:out value="${bvo.bno}"/>`;
	const id = `<c:out value="${ses.id}"/>`;
	console.log(bnoVal);
	console.log(id);
	</script>
	
	<script type="text/javascript" src="/resources/board_detail.js"></script>
	<script type="text/javascript">
	prinCommentList(bnoVal);
	</script>
		
</body>
</html>