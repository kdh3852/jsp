<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html> 
<html>
<head>
	<meta charset="UTF-8">
	<title>학번, 이름, 학년, 선택과목 양식</title>
</head>
<body>
	<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<hr>
	
	<form action = "TaskBean1.jsp" method = "post">
	
	학번 : <input type = "text" name = "classof"><br>
	
	이름 : <input type = "text" name = "name"><br>
	
	학년 : <input type="radio" name="year" value="1학년" >1학년
				<input type="radio" name="year" value="2학년" >2학년<br>
				
	선택과목 : <select  name="Subject">
  					<option value ="jsp">JSP</option>
  					<option value ="모바일앱개발">모바일앱개발</option>
  					<option value ="자료구조">자료구조</option>
  				</select><br>
  				
	<input type = "submit" value="확인"><br>
	
	</form>
	
</body>
</html>
