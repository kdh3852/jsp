<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="db.LoginDAO" %>
<%@ page import="db.LoginDTO" %>
 <%
 request.setCharacterEncoding("euc-kr"); 
	String user_id = (String)session.getAttribute("id");
	
	LoginDAO dao = LoginDAO.getInstance();
	LoginDTO dto = dao.getInform(user_id);
			
%>
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
			<jsp:include page='header.jsp' flush='false'/>
	</header>
	<div class="container">
  <h2>회원정보수정</h2>
  <hr>
  <form action="EditprofilePro.jsp" method="post">
  	<div class="form-group">
      <label for="user_id">아이디:</label>
      <input type="text" class="form-control" id="user_id" placeholder="아이디" name="user_id" value="<%=request.getSession().getAttribute("id")%>"> 
      
    </div>
     <div class="form-group">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="form-control" id="pwd" placeholder="비밀번호" name="pwd">
    </div>
    <div class="form-group">
      <label for="pwdCheck">비밀번호확인:</label>
      <input type="password" class="form-control" id="pwdCheck" placeholder="비밀번호확인" name="pwdCheck">
    </div>
     <div class="form-group">
      <label for="name">이름:</label>
      <input type="text" class="form-control" id="name" placeholder="이름을 입력해 주세요" name="name">
    </div>
    <div class="form-group">
      <label for="nickname">별명:</label>
      <input type="text" class="form-control" id="nickname" placeholder="별명을 입력해 주세요" name="nickname">
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
      <select class="form-control" id="gender" name="gender">
      <option value="남자">남</option>
      <option value="여자">여</option>
      </select>
    </div>
    <input type="submit" class="btn btn-primary form-control" value = "수정하기" onclick = "alert('회정정보수정 완료')">
  </form>
</div>
	<footer>
			<jsp:include page = 'footer.jsp' flush='false'/>
	</footer>

</body>
</html>