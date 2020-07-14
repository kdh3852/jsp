<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
  //1. Context 객체 생성
  Context initCtx = new InitialContext();
  //2. DataSource 객체 생성
  DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/jsPSK");
  
  //3. CP에서 connection 가져오기
  Connection con = ds.getConnection();
  
  String sql = "SELECT * FROM DOG";
  Statement st = con.createStatement();
  
  //4. 반환 객체
  ResultSet rs = st.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
 		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 		<meta name="description" content="">
 		<meta name="author" content="">
 		<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
   	<meta name="description" content="">
    <meta name="author" content="">
    
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/heroic-features.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script> 
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
  	<title>견종  페이지</title>
</head>
<body>
  <%
	 //5.결과 집합처리
	 while(rs.next()){
  	  String name1 = rs.getString("NAME1");
   	  String summary1 = rs.getString("SUMMARY1");
   	  
   	String name2 = rs.getString("NAME2");
 	  String summary2 = rs.getString("SUMMARY2");
 	  
 	 String name3 = rs.getString("NAME3");
  	  String summary3 = rs.getString("SUMMARY3");
  	  
  	String name4 = rs.getString("NAME4");
 	  String summary4 = rs.getString("SUMMARY4");
 	%>
 	
 	<!-- 페이지 내용 -->
    <div class="row text-center ">

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">  <!-- 카드자체 -->
          <img class="card-img-top" src="http://placehold.it/500x325" alt=""> 
          <div class="card-body"> <!-- 카드 설명 -->
            <h4 class="card-title"><%=name1 %></h4>
            <p class="card-text"><%=summary1 %></p>
          </div> 
          <div class="card-footer">
            <a href="#" class="btn btn-primary">더보기!</a>
          </div>  
        </div>
      </div>
      
      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">  <!-- 카드자체 -->
          <img class="card-img-top" src="http://placehold.it/500x325" alt=""> 
          <div class="card-body"> <!-- 카드 설명 -->
            <h4 class="card-title"><%=name2 %></h4>
            <p class="card-text"><%=summary2 %></p>
          </div> 
          <div class="card-footer">
            <a href="#" class="btn btn-primary">더보기!</a>
          </div>  
        </div>
      </div>
  	
  	  <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">  <!-- 카드자체 -->
          <img class="card-img-top" src="http://placehold.it/500x325" alt=""> 
          <div class="card-body"> <!-- 카드 설명 -->
            <h4 class="card-title"><%=name3 %></h4>
            <p class="card-text"><%=summary3 %></p>
          </div> 
          <div class="card-footer">
            <a href="#" class="btn btn-primary">더보기!</a>
          </div>  
        </div>
      </div>
      
      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">  <!-- 카드자체 -->
          <img class="card-img-top" src="http://placehold.it/500x325" alt=""> 
          <div class="card-body"> <!-- 카드 설명 -->
            <h4 class="card-title"><%=name4 %></h4>
            <p class="card-text"><%=summary4 %></p>
          </div> 
          <div class="card-footer">
            <a href="#" class="btn btn-primary">더보기!</a>
          </div>  
        </div>
      </div>
      
   </div>
 	<% }
 //6. 객체 연결 해제
 rs.close();
 st.close();
 con.close();
 %>
</body>
</html>