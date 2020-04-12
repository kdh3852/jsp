<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>Insert title here</title>
</head>
<body>
	<h2>사용자확인란</h2>
	<%String test1 = request.getParameter("test1");
		String test2 = request.getParameter("test2");
		String test3 = request.getParameter("test3");
		String test4 = request.getParameter("test4");
		String test5 = request.getParameter("test5");
		String aa = request.getParameter("aa");
		String test6 = request.getParameter("test6");
		String test7 = request.getParameter("test7");
		%>
		<table border="1" width="700px" height="300x">
<tr>
  <th>컨트롤 요소</th>
  
  <td style="text-align:center;font-size: 12pt;">입력값</td>
</tr>
<tr>
  <th>아이디</th> 
  <td><input type="text" name="test1" value="<%=test1%>"/></td>
</tr>
<tr>
  <th>비밀번호</th> 
  <td><input type="text" name="test2" value="<%=test2%>"/></td>
</tr>
<tr>
  <th>이름</th> 
  <td><input type="text" name="test3" value="<%=test3%>"/></td>
</tr>
<tr>
  <th>성별</th> 
  <td><input type="text" name="test4" value=<%=test4%>>
  </td>
  
</tr>
<tr>
  <th>생년원일</th> 
  <td><input type="text" name="test5" value=<%=test5%>></td>
</tr>
<tr>
  <th>연락처</th> 
<td><input type="text" name="aa" value=<%=aa%>> -
  <input type="text" name="test6" value=<%=test6%>> - 
  <input type="text" name="test7" value=<%=test7%>></td>
</tr>

</table>
</body>
</body>
</html>