<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="by.htp.ex.service.exception.UserServiceException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration status info</title>
</head>
<body>

	<c:if test="${requestScope.regStatus eq 'ok'}">
		<h2>You have been successfully registered.</h2>
		<h2>Now your need to enter your login and password.</h2>
		<br><br>
		<h2>You may do this here:</h2>
		<form action="controller" method="post">
			<input type="hidden" name="command" value="go_to_base_page"/>
			<input type="submit" value="Back to main page"/>
		</form>
		<br><br>
		<h2>or here:</h2>		
		<form action="controller" method="post">
			<input type="hidden" name="command" value="go_to_logination_page"/>
			<input type="submit" value="To logination page"/>
		</form>		
	</c:if>
	
	<c:if test="${requestScope.regStatus eq 'notOk'}">
		<h2>Sorry.</h2>
		<h2>You have entered incorrect registration data. Please, try again.</h2>
		<a href="controller?command=go_to_registration_page">To Registration page</a>
		<br><br>
		<form action="controller" method="post">
			<input type="hidden" name="command" value="go_to_base_page"/>
			<input type="submit" value="Back to main page"/>
		</form>
	</c:if>
	



	
	
	
	
	
</body>
</html> 