<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력</title>
</head>
<body>
	<H1>사용자 입력 폼</H1>
	
	<form	action="insertPro.jsp" method="post">
	ID : <input type="text" name = "id"><br>
	NAME : <input type="text" name = "id"><br>
	PWD : <input type="password" name = "pwd"><br>
	AGE : <input type="text" name = "id"><br>
	FOOTSIZE : <input type="text" name = "id"><br>
	<input type="submit" value = "입력완료">
	<input type="reset" value="다시작성">
	</form>
	
</body>
</html>