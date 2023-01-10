<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="by.htp.ex.service.exception.UserServiceException"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<%
		UserServiceException exception = (UserServiceException)request.getAttribute("exception");
	%>
	
	
	<br><br>
	<%=  exception.getMessage()%>
	<br><br>
	
	<form action="controller" method="post">
		<input type="hidden" name="command" value="go_to_base_page"/>
		<input type="submit" value="Back to main page"/>
	</form>
	
</body>
</html> 