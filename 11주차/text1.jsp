<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8");%>
<%
	Context initCtx = new InitialContext();
		
	DataSource ds = (DataSource) initCtx.lookup("java:comp/env/jdbc/jskim");
	
	Connection con = ds.getConnection();
	String sql = "SELECT * FROM MEMBERSHIP1";
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
			<th>비밀번호</th>
			<th>비밀번호확인</th>
			<th>이름</th>
			<th>별명</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>성별</th>
		</tr>
<%
	while(rs.next()){
		String id = rs.getString("ID");
		String pwd = rs.getString("PWD");
		String pwdcheck = rs.getString("PWDCHECK");
		String name = rs.getString("NAME");
		String Nickname = rs.getString("NICKNAME");
		String tel = rs.getString("TEL");
		String email = rs.getString("EMAIL");
		String gender = rs.getString("GENDER");
		
		
%>
		<tr>
			<td><%=id %></td>
			<td><%=pwd %></td>
			<td><%=pwdcheck %></td>
			<td><%=name %></td>
			<td><%=Nickname %></td>
			<td><%=tel %></td>
			<td><%=email %></td>
			<td><%=gender %></td>
			
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