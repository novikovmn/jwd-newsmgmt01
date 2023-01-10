<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logination page</title>
</head>
<body>
	
	<h1>Logination:</h1>
	
	<br><br>
	
	<form action="controller" method="post">
		<input type="hidden" name="command" value="do_sign_in"/>
		<table>
			<tr>
				<td>User name: </td><td><input type="text" name="login"/></td>
			</tr>
			<tr>
				<td>Password: </td><td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td></td><td><input type="submit" value="Do logination"/></td>
			</tr>			
		</table>
	</form>
	
	<br><br>
	
	<form action="controller" method="post">
		<input type="hidden" name="command" value="go_to_base_page"/>
		<input type="submit" value="Back to main page"/>
	</form>
	
	
	
		
</body>
</html> 