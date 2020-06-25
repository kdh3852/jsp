<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
  
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script> 
    
   
  </head>
  
  
  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	<div class="card align-middle" style="width:20rem; border-radius:20px;">
		<div class="card-title" style="margin-top:30px;">
		
		</div>
		
		<div class="card-body">
      <form class="form-signin" method="post" onSubmit="logincall();return false">
        <label for="inputEmail" class="id">아이디</label>
        <input type="text" id="uid" class="form-control" placeholder="아이디" required autofocus><br>
        <label for="inputPassword" class="pw">패스워드</label>
        <input type="password" id="upw" class="form-control" placeholder="패스워드" required><br>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 아이디 기억하기
          </label>
        </div>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        
        <div style="justify-content:center;">
          <button id="btn-Yes" class="btn" type="submit">아이디 찾기</button>
          <button id="btn-Yes" class="btn" type="submit">비밀번호 찾기</button>
        </div>
        
      </form>
		</div>
		
	</div>

    
  </body>
</html>