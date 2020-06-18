<%@page import="java.util.Date" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String url ="jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	String sql = "SELECT * FROM LOGIN5";
	Statement st = con.createStatement();
	
	
	ResultSet rs = st.executeQuery(sql);
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 정보</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="cotainer">
	<h1 class="text-center font-weight-bold">로그인정보</h1>
	<table class = "table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>나이</th>
			<th>발사이즈</th>
		</tr>
<%
	while (rs.next()){
		String id = rs.getString( "ID");
		String name = rs.getString("NAME");
		String pwd = rs.getString("PWD");
		String age = rs.getString("AGE");
		String footsize = rs.getString("FOOTSIZE");
		
		
		
	
%>
		<tr>
			<td><a href="updateForm.jsp?id=<%=id %>"></a><%=id %></td>
			<td><%=name %></td>
			<td><%=pwd %></td>
			<td><%=age %></td>
			<td><%=footsize %></td>
		</tr>
<% } 
	con.close();
	st.close();
	rs.close();
	
	%>
	</table>
	</div>
</body>
</html>