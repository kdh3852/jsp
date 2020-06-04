<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LE테스트2</title>
</head>
<body>
	<h2>글쓰기</h2>
	<jsp:useBean id="member" class="ch11.report" scope="page"/>
	<jsp:setProperty property="*" name="member"/>
	<table  border="1" width="550" height="100">
		<tr>
			<td colspan="2">글목록</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${member.name}</td>		
		</tr>
		<tr>
			<td>제목</td>
			<td>${member.title}</td>		
		</tr>
		<tr>
			<td>이메일</td>
			<td>${member.email}</td>		
		</tr>
		<tr>
			<td>내용</td>
			<td>${member.content}</td>		
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${member.pw}</td>	
		</tr>	
		</table>
</body>
</html>