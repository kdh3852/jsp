<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%@ page import = "db.LoginDAO" %>

<% request.setCharacterEncoding("utf-8");

	String user_id =request.getParameter("user_id");
	String pwd =request.getParameter("pwd");
	String pwdCheck =request.getParameter("pwdCheck");
	String name =request.getParameter("name");
	String nickname =request.getParameter("nickname");
	String tel =request.getParameter("tel");
	String email =request.getParameter("email");
	String gender =request.getParameter("gender");
	
	LoginDAO dbpro = LoginDAO.getInstance();
	dbpro.updateUser(user_id, pwd, pwdCheck, name, nickname, tel, email, gender);
	
	response.sendRedirect("main.jsp");



%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>회원정보수정</title>
</head>
<body>
	
</body>
</html>