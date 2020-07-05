<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<title>회원탈퇴</title>
	<link rel = 'stylesheet' href ='template2.css'>
	
</head>
<body>
<% String user_id = request.getParameter("user_id"); %>
	<header>
			<jsp:include page='header.jsp' flush='false'/>
	</header>
	<div class="container">
<h2>회원탈퇴</h2>
  <hr>
	<div>
		 <form action="delete.jsp">
  	<div class="form-group">
      <label for="user_id">아이디:</label>
      <input type="text" class="form-control" id="user_id" placeholder="아이디" name="user_id">
    </div>
     <div class="form-group">
      <label for="pwd">패스워드:</label>
      <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pswd">
    </div>
        <input id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit" value="회원탈퇴"
        	onclick = "Location.href='delete.jsp?user_id=<%=user_id%>'">
      </form>
		</div>
		<br>
		<hr>
		<p style="font-size:200%">회원 탈퇴시 주의사항</p>
		<hr>
		<i style="color:brown">회원 탈퇴시 DogCat 서비스 내 모든 정보가 삭제되며, 이후 복구가 불가능합니다.</i>
		<ul>		
		<li>탈퇴 신청시 즉시 탈퇴 처리됩니다.</li>
		<li>회원 탈퇴시 10일 동안 다시 가입을 할 수 없습니다.</li>
		<li>회원가입 시 입력하신 개인 정보 및 결제 정보 등은 즉시 파기되며 복구 할 수 없습니다.</li>
		<li>탈퇴 전 작성된 게시물이나 댓글은 등은 탈퇴 후에도 유지됩니다.</li>
		<li style = " color:red">게시물 삭제, 댓글 등 삭제하고 싶어하는 경우 반드시 삭제 처리 후 탈퇴를 신청 해주시기 바랍니다.</li>
		</ul>
		</div>
	<footer>
			<jsp:include page = 'footer.jsp' flush='false'/>
	</footer>
</body>
</html>