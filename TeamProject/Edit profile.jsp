<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>회원정보수정</title>
  <link rel = 'stylesheet' href ='template2.css'>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<header>
			<jsp:include page='top.jsp' flush='false'/>
	</header>
	<div class="container">
  <h2>회원정보수정</h2>
  <hr>
  <form action="/action_page.php">
  	<div class="form-group">
      <label for="id">아이디:</label>
      <input type="text" class="form-control" id="id" placeholder="아이디" name="id">
      <button style = "color: white; background-color: #0099FF;" type="submit">아이디 중복확인</button>
    </div>
     <div class="form-group">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pswd">
    </div>
    <div class="form-group">
      <label for="pwdCheck">비밀번호 확인:</label>
      <input type="password" class="form-control" id="pwdCheck" placeholder="비밀번호" name="pswdCheck">
    </div>
     <div class="form-group">
      <label for="name">이름:</label>
      <input type="text" class="form-control" id="name" placeholder="이름을 입력해 주세요" name="name">
    </div>
    <div class="form-group">
      <label for="Nickname">별명:</label>
      <input type="text" class="form-control" id="Nickname" placeholder="별명을 입력해 주세요" name="Nickname">
    </div>
    <div class="form-group">
      <label for="tel">전화번호:</label>
      <input type=text class="form-control" id="tel" placeholder="-빼고 전화 번호를 입력해 주세요" name="tel">
    </div>
    <div class="form-group">
      <label for="email">이메일:</label>
      <input type="email" class="form-control" id="email" placeholder="이메일을 입력해 주세요" name="email">
    </div>
    <div class="form-group">
      <label for="gender">성별:</label>
      <select class="form-control" id="gender">
      <option value="M">남</option>
      <option value="F">여</option>
      </select>                  
    </div>
    <button type="submit" class="btn btn-primary form-control">수정하기</button>
  </form>
</div>
	<footer>
			<jsp:include page = 'footer.jsp' flush='false'/>
	</footer>

</body>
</html>