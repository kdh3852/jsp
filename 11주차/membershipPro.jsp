<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8");%>
	 <jsp:useBean id="mbean" class="db.MemberBean">
   <jsp:setProperty name="mbean" property="*" /></jsp:useBean>
  
  <%
	Context initCtx = new InitialContext();
	
	Context envCtx = (Context) initCtx.lookup("java:comp/env");
	
	DataSource ds = (DataSource) envCtx.lookup("jdbc/jskim");
	
	Connection con = ds.getConnection();
	
	String sql = "INSERT INTO MEMBERSHIP1 VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1, request.getParameter("id"));
	pst.setString(2, request.getParameter("pwd"));
	pst.setString(3, request.getParameter("pwdCheck"));
	pst.setString(4, request.getParameter("name"));
	pst.setString(5, request.getParameter("Nickname"));
	pst.setString(6, request.getParameter("tel"));
	pst.setString(7, request.getParameter("email"));
	pst.setString(8, request.getParameter("gender"));
	
	int i = pst.executeUpdate();	
	
	pst.close();
	con.close();
	
	response.sendRedirect("text1.jsp");
	
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<script>

	alert('회원가입 성공');

	location.href = 'login.jsp';

</script>
</body>
</html>