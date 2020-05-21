<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 	<%response.setStatus(HttpServletResponse.SC_OK);%> <!-- 응답코드 200으로 지정됨 -->
<html>
<head>
	<meta charset="UTF-8">
	<title>500에러 페이지</title>
</head>
<body>
	서버 내부 오류가 있습니다. 빠른 시간 내에 해결하겠습니다.
	<hr>
	<img src="http://localhost:8080/jspProject2/6주차/error/under construction.jpg"> <!-- 절대경로 작성해야함!! -->
</body>
</html>