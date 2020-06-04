<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
</head>
<body>
	<h2>글쓰기</h2>
	<form action = "TaskBean2.jsp" method = "post">
	<table  border="1" width="550" height="100">
		<tr>
			<td colspan="2">글목록</td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"/></td>		
		</tr>
		
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"/></td>		
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email"/></td>		
		</tr>
		
		<tr>
			<td>내용</td>
			<td><textarea cols = "50" rows = "10" name="content"></textarea></td>		
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw"/></td>	
		</tr>	
		
		<tr>
		<td	colspan="2"><input type="submit" value="확인" >
  												<input type="reset" value="다시입력">
  												<input type="submit" value="목록보기">	</td>
		</tr>
	</table>
	</form>
</body>
</html>