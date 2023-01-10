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
	
	<h3>Sorry.</h3>
	<br><br>
	<%=  exception.getMessage()%>
	
</body>
</html> 