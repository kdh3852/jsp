<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String url ="jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	String sql = "INSERT INTO LOGIN VALUES(?,?,?,?,?)";
	
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, request.getParameter("id"));
	pst.setString(2, request.getParameter("name"));
	pst.setString(3, request.getParameter("pwd"));
	pst.setString(4, request.getParameter("age"));
	pst.setString(5, request.getParameter("footsize"));
	
	int i = pst.executeUpdate();
	
	pst.close();
	con.close();
	
	response.sendRedirect("list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	
</body>
</html>