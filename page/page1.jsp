<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<h2>안녕하세여</h2>
<hr>
<form action ="123.jsp" method="post">
<table border="1" width="700px" height="300x">
<tr>
  <th bgcolor="purple">아이디</th> 
  <td><input type="text" name="test1" value=""/></td>
</tr>
<tr>
  <th bgcolor="purple">비밀번호</th> 
  <td><input type="text" name="test2" value=""/></td>
</tr>
<tr>
  <th bgcolor="purple">이름</th> 
  <td><input type="text" name="test3" value=""/></td>
</tr>
<tr>
  <th bgcolor="purple">성별</th> 
  <td><input type="radio" name="test4" value="남자" >남자
  		<input type="radio" name="test4" value="여자" >여자
  </td>
  
</tr>
<tr>
  <th bgcolor="purple">생년원일</th> 
  <td><input type="date" name="test5" value="년 월 일"/></td>
</tr>
<tr>
  <th bgcolor="purple">연락처</th> 
  <td><select name="aa">
     <option>010</option>
     <option value="011">011</option>
     <option value="012">012</option>
</select> -
  <input type="text" name="test6" value=""/> - 
  <input type="text" name="test7" value=""/></td>
</tr>

</table>
  <input type="submit" value="확인"> </form>
</body>
</html>