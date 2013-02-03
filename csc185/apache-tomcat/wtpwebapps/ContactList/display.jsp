<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact List</title>
</head>
<body>
	<form action="ContactServlet" method="post">

<table>


	<tr>
		<td>Name:</td>
		<td><input type="text" name="name" /></td>
	</tr>
		
	<tr>
		<td>Number:</td>
		<td><input type="text" name="number" /></td>
	</tr>
	
	<tr>
		<td>Email Address:</td>
		<td><input type="text" name="email" /></td>
	</tr>
		
		
<tr> 
	<td colspan="2"><input type="submit" name="operation" value="Add"/>
	<td colspan="2"><input type="submit" name="operation" value="Edit"/>
	<td colspan="2"><input type="submit" name="operation" value="Delete"/>
	<td colspan="2"><input type="submit" name="operation" value="Search"/></td>	
	
	
	
	



</table>


</form>
</body>
</html>