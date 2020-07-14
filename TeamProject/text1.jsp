<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
    <%@page import = "db.LoginDAO, java.util.ArrayList, db.LoginDTO" %>
    <% request.setCharacterEncoding("UTF-8");%>
<%
	LoginDTO dto = new LoginDTO ();
	LoginDAO dbpro = new LoginDAO();
	ArrayList<LoginDTO> dtos = dbpro.listUser();
	
	
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
		<tr>
<%
	for(int i=0; i<dtos.size(); i++){
		dto = dtos.get(i);
		String user_id = dto.getUser_id();
		String pwd = dto.getPwd();
		String pwdcheck = dto.getPwdCheck();
		String name = dto.getName();
		String nickname = dto.getNickname();
		String tel = dto.getTel();
		String email = dto.getEmail();
		String gender =dto.getGender();
	
%>
		
			<td><%=user_id%></td>
			<td><%=pwd %></td>
			<td><%=pwdcheck %></td>
			<td><%=name %></td>
			<td><%=nickname %></td>
			<td><%=tel %></td>
			<td><%=email %></td>
			<td><%=gender %></td>
			

		</tr>
<%} %>
	</table>
	
	</div>
</body>
</html>