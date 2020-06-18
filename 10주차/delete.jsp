<%@ page language="java" contentType="text/html; charset=UTF-8"
    import = "java.sql.*"
    pageEncoding="UTF-8"%>
    
  <%
	String url ="jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd = "1111";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	String sql = "DELETE FROM LOGIN WHERE ID=?";
	
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, request.getParameter("id"));
	
	int i = pst.executeUpdate();
	
	pst.close();
	con.close();
	%>
	
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>