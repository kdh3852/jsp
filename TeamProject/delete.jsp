<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="db.LoginDAO, db.LoginDTO" %>

<% request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		LoginDAO dbPro = LoginDAO.getInstance();
		dbPro.deleteUser(id);
		response.sendRedirect("text1.jsp");
		



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