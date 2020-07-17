<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="db.LoginDAO, db.LoginDTO" %>
<% 

		String user_id = (String)session.getAttribute("id");
		String pwd = request.getParameter("pwd");
		
		LoginDAO dbPro = LoginDAO.getInstance();
		boolean result = dbPro.deleteId(user_id, pwd);
		
		if(result){
			session.invalidate();
		
		%>
		<script>
					alert("탈퇴성공.");
					location.href="Main_Index.jsp";
		</script>
		<%} else { %>
		<script>
					alert("비밀번호가틀립니다.");
					location.href="Withdrawal.jsp";
		</script>
		
		<%} %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	 
	<title>회원탈퇴</title>
</head>
<body>
	
</body>
</html>