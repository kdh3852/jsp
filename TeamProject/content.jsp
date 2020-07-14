<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>내가 작성한 글</h2>
  
  <table class="table">
    <thead>
    
      <tr>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>강아지</td>
        <td>동현</td>
        <td>2020-06-16</td>
      </tr>
      <tr>
        <td>고양이</td>
        <td>동현</td>
        <td>2020-06-16</td>
      </tr>
      <tr>
        <td>개, 고양이</td>
        <td>동현</td>
        <td>2020-06-16</td>
      </tr>
    </tbody>
  </table>
</div>

<ul class="pagination" style="justify-content:center;">
  <li class="page-item"><a class="page-link" href="#">이전</a></li>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item"><a class="page-link" href="#">2</a></li>
  <li class="page-item"><a class="page-link" href="#">3</a></li>
  <li class="page-item"><a class="page-link" href="#">다음</a></li>
</ul>
</body>
</html>