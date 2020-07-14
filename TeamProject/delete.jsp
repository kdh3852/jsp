<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="db.LoginDAO, db.LoginDTO" %>
<% session.invalidate();%>
<% request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String pwd = request.getParameter("password");
		LoginDAO dbPro = LoginDAO.getInstance();
		dbPro.deleteUser(user_id);
		LoginDAO dao = new LoginDAO();
		if(dao.LoginCheck(user_id, pwd)==1) {
			session.setAttribute("id", user_id);
			response.sendRedirect("Main_Index.jsp");
		} else {
%>
		<script>
				alert("회원탈퇴 성공");
				location.href="login.jsp";
		</script>
    
<%
		}
%>
		

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	 
	<title>회원탈퇴</title>
</head>
<body>
	
</body>
</html>