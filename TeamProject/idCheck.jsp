<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "db.LoginDTO, db.LoginDAO" %>
<%
		String user_id = request.getParameter("user_id");
		boolean result = false;
		if(user_id == null || user_id.equals("")) {
			user_id ="";
		} else{
			LoginDAO loginDAO = new LoginDAO();
			result = loginDAO.idCheck(user_id);
		}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>idCheck</title>
<script>
	function setId() {
		opener.f1.user_id.value = document.f1.user_id.value;
		opener.f1.idDupChk.value = 't';
		self.close();
	}

</script>
</head>
<body>
	<form name ="f1" action="idCheck.jsp">
		<input type = "text" name ="user_id" value="<%=user_id %>"/><input type ="submit" value="�˻�"/>
	
	</form>
	<% if(user_id.equals("")){ %>
	
	<%} else if(result ==false){
		%>
		<a href="membership.jsp" onclick="setId()">��밡�� </a>
	<%} else{ %>
		���̵� �ߺ�
	<% } %> 
</body>
</html>
</body>
</html>