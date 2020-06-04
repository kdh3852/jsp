<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LE테스트1</title>
</head>
<body>
	<jsp:useBean id="stuent" class="ch10.stuent" scope="page"/>
	<jsp:setProperty property="*" name="stuent" />
	
	학번 :	${param.classof}<br>
	
	이름 :	${param.name}<br>
	
	학년 :	${param.year}<br>
	
	선택과목 :	${param.Subject}<br> 
</body>
</html>