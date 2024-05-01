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
<h1>Member Modify Page</h1>
<form action="/memb/update" method="post">
<div class="mb-3 row">
	Id : <input class="form-control" type="text" name="id" value="${ses.id }" readonly="readonly"> <br>
	Pwd : <input class="form-control" type="password" name="pwd" value="${ses.pwd }" > <br>
	E-mail : <input class="form-control" type="text" name="email" value="${ses.email }" > <br>
	Age : <input class="form-control" type="number" name="age" value="${ses.age }" > <br>
	Phone : <input class="form-control" type="text" name="phone" value="${ses.phone }" > <br>
	Regdate : <input class="form-control" type="text" name="regdate" value="${ses.regdate }" disabled="disabled" > <br>
	LastLogin : <input class="form-control"type="text" name="lastlogin" value="${ses.lastlogin }" disabled="disabled" > <br>
</div>
	<button type="submit" class="btn btn-success">수정</button>
</form>
<a href="/memb/delete"> <button class="btn btn-danger" type="button">회원탈퇴</button> </a>
<a href="../index.jsp"> <button type="button" class="btn btn-dark">메인페이지</button> </a>

<script type="text/javascript">
const msg_update = `<c:out value="${msg_update}"></c:out>`;
console.log(msg_update);
if(msg_update ==="fail"){
	alert("회원정보 수정이 실패했습니다.");
}


</script>

</body>
</html>