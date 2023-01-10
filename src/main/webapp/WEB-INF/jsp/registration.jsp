<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>
</head>
<body>
	
	<h1>Registration:</h1>
	
	<br><br>
	
	<form action="controller" method="post">
		<input type="hidden" name="command" value="do_register"/>
		<table>
			<tr>
				<td>User name: </td><td><input type="text" name="userName"/></td>
			</tr>
			<tr>
				<td>Password: </td><td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td>Email: </td><td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td></td><td><input type="submit" value="Do register"/></td>
			</tr>			
		</table>
	</form>
	
	<br><br>
	
	<form action="controller" method="post">
		<input type="hidden" name="command" value="go_to_base_page"/>
		<input type="submit" value="Back to main page"/>
	</form>
	
	<br><br>
	
	<form action="controller" method="post">
		<input type="hidden" name="command" value="go_to_logination_page"/>
		<input type="submit" value="To logination page"/>
	</form>
	
	
	
		
</body>
</html> 