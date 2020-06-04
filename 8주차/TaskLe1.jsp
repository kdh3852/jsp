<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LE테스트1</title>
</head>
<body>
	<jsp:useBean id="member" class="ch10.stuent" scope="page"/>
	<jsp:setProperty property="*" name="member" />
	
	학번 :	${member.classof}<br>
	
	이름 :	${member.name}<br>
	
	학년 :	${member.year}<br>
	
	선택과목 :	${member.Subject}<br> 
</body>
</html>