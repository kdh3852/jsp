<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
</head>
<body>
	<h2>글쓰기</h2>
	<jsp:useBean id="m" class="ch11.report" scope="page"/>
	<jsp:setProperty property="*" name="m"/>
	
	<table  border="1" width="550" height="100">
		<tr>
			<td colspan="2">글목록</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="m"/></td>		
		</tr>
		<tr>
			<td>제목</td>
			<td><jsp:getProperty property="title" name="m"/></td>		
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="m"/></td>		
		</tr>
		<tr>
			<td>내용</td>
			<td><jsp:getProperty property="content" name="m"/></td>		
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty property="pw" name="m"/></td>		
		</tr>	
		
	</table>
</body>
</html>