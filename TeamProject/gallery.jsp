<%@page import="java.sql.Clob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//1. Context객체 생성
	Context initCtx = new InitialContext();

	//2. DataSource 객체 생성
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/jsPSK");
	
	//3. CP에서 connection 가져오기
	Connection con =  ds.getConnection();
	
	String sql = "SELECT * FROM PHOTO";
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<section class="gallery-block cards-gallery">
	<div class="container">
		<div>
			<center><h2 style="color:red; margin-bottom:20px;">사진첩</h2></center>
		</div>
		<div class="row">
    	<%
			while(rs.next()){
				String name = rs.getString("NAME");
				String content = rs.getString("CONTENT");
				String image = rs.getString("IMAGE");
		%>
			<div class="col-md-6 col-lg-4">
				<div class="card border-0 transform-on-hover">
					<a class="lightbox" href="img">
						<img src="<%=image %>" class="card-img-top">
					</a>
					<div class="card-body">
						<h6><a href="#"><%=name %></a></h6>
						<p class="text-muted card-text"><%=content%></p>
					</div>
				</div>
			</div>
			<% }
											con.close();
											st.close();
											rs.close();
											%>
<div class="container">
  <ul class="pagination justify-content-center">
    <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
    <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
    <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
  </ul>
</div>
</section>
</body>
</html>