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

	<h1>My JSP Project TEST!!</h1>

	<!-- 
		method get => 주소표시줄에 ? 쿼리스트링을 달고 이동 / 
		method post => 별도의 저장공간에 담아서 이동 (보안, 많은 데이터를 이동시)
	 -->
	<!-- ne:아니면 eq:그렇다면 -->

		<c:if test="${ses.id eq null }">
		<form action="/memb/login" method="post" >
	  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-1 col-form-label">ID</label>
    <div class="col-sm-3">
      <input type="text" name="id"  class="form-control" id="inputEmail3">
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-1 col-form-label">Password</label>
    <div class="col-sm-3">
      <input type="password" name="pwd" class="form-control" id="inputPassword3">
    </div>
  </div>
  <button type="submit"  class="btn btn-primary">Login</button>
  		</form>
	</c:if>
	<br>
	<%-- <c:if test="${ses.id eq null }">
		<form action="/memb/login" method="post">
			id : <input type="text" name="id" >
			pwd : <input type="password" name="pwd" >
			
			<button type="submit" class="btn btn-outline-primary">Login</button>
		</form>
	</c:if> --%>
	
	
	<div>
		<c:if test="${ses.id ne null }">
		${ses.id }님이 login하셨습니다. <br>
		계정생성일 : ${ses.regdate } / 마지막접속 : ${ses.lastlogin } <br>
		<div class="btn-group" role="group" aria-label="Basic outlined example">
		<a href="/memb/modify" ><button class="btn btn-outline-light" type="button">회원정보수정 </button> </a>
		<a href="/memb/list"><button class="btn btn-outline-light" type="button">회원리스트</button></a>
		<a href="/brd/searchMy"><button class="btn btn-outline-light" type="button">내가 쓴 글 보기</button></a>
		<a href="/brd/register"><button class="btn btn-outline-light" type="button">글쓰기 페이지</button></a>
		<a href="/memb/logout"><button class="btn btn-danger" type="button">Logout</button></a>
		</div>
		</c:if>
	</div>
	
	<div class="btn-group" role="group" aria-label="Basic outlined example">
	<a href="/brd/list"> <button class="btn btn-outline-light" type="button">게시판페이지</button></a>

	<a href="/memb/join"><button class="btn btn-outline-light" type="button">회원가입 페이지로...</button></a>
	</div>


	<script type="text/javascript">
		const msg_login = `<c:out value="${msg_login}"></c:out>`;
		console.log(msg_login);
		if (msg_login === "-1") {
			alert("로그인 정보가 일치하지 않습니다.");
		}
		
		const msg_update = `<c:out value="${msg_update}" />`;
		console.log(msg_update);
		if(msg_update==='ok'){
			alert("회원정보수정이 완료되었습니다. 다시 로그인헤수세요.");
		}	
		
		const msg_delete = `<c:out value="${msg_delete}" />`;
		console.log(msg_delete);
		if(msg_delete==='ok'){
			alert("회원 탈퇴가 정상적으로 완료되었습니다.");
		}
		
	</script>
</body>
</html>