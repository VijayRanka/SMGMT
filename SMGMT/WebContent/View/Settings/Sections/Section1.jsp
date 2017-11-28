<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/SMGMT/Section" method="post">	
				Section Name:
				<input type="text" name="section_name" id="section" onkeyup="this.value=this.value.toUpperCase().trim()"    placeholder="Section" required>
				<br>
			<input type="submit" value="Submit">
			<input type="button" value="cancel">		
	</form>
	
</body>
</html>