<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("id") != null) { //세션이 있으면 메인으로 %>
<jsp:forward page="logout.jsp"></jsp:forward>
<% } %>

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
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
    
    
    <title>로그인</title>
    <!--Bootsrap 4 CDN-->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--Fontawesome CDN-->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<!--Custom styles-->
		<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
<!-- ================================================================================== -->
 <body>
	<!-- 헤더 -->
  <section id='header'>
    <jsp:include page="header.jsp" flush='false'/>
  </section>
  	
		<div class="container">
			<div class="d-flex justify-content-center h-80">
				<div class="card" style="border-radius:20px">
					<div class="card-title" style="margin-top:30px;" >
						<h2 class="card-title text-center" style="color:black;">로그인</h2>
					</div>
			
					<div class="card-body" >
      		<form action="loginPro.jsp" class="form-signin" method="post" onSubmit="logincall();return false">
<!-- ======================================아이디=============================================================== -->
        		<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-user"></i></span>
								</div>
								<input type="text" name="id" class="form-control" placeholder="아이디">
						</div>
<!-- =======================================비번=============================================================== -->
        		<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-key"></i></span>
								</div>
								<input type="password" name="password" class="form-control" placeholder="비밀번호" required autofocus>
						</div>
<!-- ====================================================================================================== -->					
        		<div class="checkbox">
          		<label>
           		 <input type="checkbox" value="remember-me"> 아이디 기억하기
         		 </label>
        		</div><br>
        
        		<button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        
      	 	</form> <!-- 로그인 끝 -->
				</div>
				
				<!-- 로그인 푸터 -->
				<div class="card-footer">
						<div class="d-flex justify-content-center links">
							아직 가입하지 않으셨나요?<a href="#" onclick="location.href='membership.jsp'"> Sign Up</a>
						</div>
						<div class="d-flex justify-content-center">
							<a href="#">비밀번호 찾기</a>
						</div>
				</div>
				
			</div>
		</div>
	</div>

	<!-- 바텀 -->
  <section id='footer'>
   	<jsp:include page="footer.jsp" flush='false'/>
 	</section>
</body>
</html>