<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.LoginDAO" %>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="dto" class="db.LoginDAO" scope="page"/>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
  <h1>내정보 / 내 반려 동물 정보</h1>
  <hr><br>
<div class="row">
    <div class="col" >아이디: <input type="text" value="<%=request.getSession().getAttribute("id")%>"></div>
    <div class="col" >이름:</div>
    <div class="col" >펫 사진:</div>
</div>
<br>

<div class="row">
    <div class="col" >이름:<input type="text" value="<%=request.getSession().getAttribute("name")%>"></div>
    <div class="col" >생일:</div>
    <div class="col" ></div>
</div>
<br>
<div class="row">
    <div class="col" >별명:</div>
    <div class="col" >품종:</div>
    <div class="col" ></div>
   
</div>
<br>
<div class="row">
    <div class="col" >전화번호:</div>
    <div class="col" >성별</div>
    <div class="col" ></div>
    
</div>
<br>
<div class="row">
    <div class="col" >이메일:</div>
    <div class="col" >알러지 유무:</div>
    <div class="col" ></div>
    
</div>
<br>
<div class="row">
    <div class="col" >성별:</div>
    <div class="col" ></div>
    <div class="col" ></div>
</div>
<br>
</div>
</body>
</html>