<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "db.LoginDTO, db.LoginDAO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유 게시판</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  
</head>
<body>
<% String user_id = null;
		if (session.getAttribute("user_id") != null) {
				user_id = (String) session.getAttribute("user_id");
				}
				%>
				<header>
			<jsp:include page='header.jsp' flush='false'/>
	</header>
	 &nbsp;&nbsp; &nbsp;&nbsp;
						<div class="container">
							<div class="row">
								<table class="table table-striped" style ="text-align: center; border: 1px solid #dddddd; padding-top:30dp">
									<thead>
										<tr>
											<th style="background-color: #ffffff; text-alige: center;">번호</th>
											<th style="background-color: #ffffff; text-alige: center;">제목</th>
											<th style="background-color: #ffffff; text-alige: center;">작성자</th>
											<th style="background-color: #ffffff; text-alige: center;">작성일</th>
										</tr>
								</thead>
								<tbody>
									<tr>
										<td style="background-color: #ffffff; text-alige: center;">1</td>
										<td style="background-color: #ffffff; text-alige: center;">1</td>
										<td style="background-color: #ffffff; text-alige: center;">1</td>
										<td style="background-color: #ffffff; text-alige: center;">1</td>
									</tr>
									
								</tbody>
							</table>
							<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
							</div>
						
						</div>
						<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
						<script src="js/bootstriap.js"></script>
						<footer>
			<jsp:include page = 'footer.jsp' flush='false'/>
	</footer>
</body>
</html>
