<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<style> table, tr, td{border: 1px solid black;}</style>
	<meta charset="UTF-8">
	<title>학생정보</title>
</head>
<body>
	<h2>학생정보</h2>
	<hr>
	<jsp:useBean id="m" class="ch10.stuent" scope="page"/>
	<jsp:setProperty property="*" name="m"/>
	<table>
		<tr>
			<td>학번 :	<jsp:setProperty property="classof" name="m"/>
				<br>
			</td>
		</tr>
			
	
		<tr>
			<td>이름 :	<jsp:setProperty property="name" name="m"/>
				<br>
			</td>
		</tr>
		
		<tr>
			<td>학년 :	<jsp:setProperty property="year" name="m"/>
				<br>
			</td>
		</tr>
		<tr>
			<td>선택과목 :	<jsp:setProperty property="Subject" name="m"/>
				<br>
			</td>
		</tr> 
	</table>
	</body>
</html>