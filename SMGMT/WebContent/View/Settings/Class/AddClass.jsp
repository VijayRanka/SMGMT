<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="loadFunction()">

	<div>
		<form action="/SMGMT/AddClass.do" method="post">
			<table id="display-textfeild" border="1px">
					<tr>
						<td>Class 1</td>
						<td>
							<input type="hidden" name="rowCount" id="rowCount"  value="1">
							<input type="text" name="classRoom1" id="classRoom1" placeholder="Class 1" required="required" oninvalid="this.setCustomValidity('Please Enter Class 1!')" oninput="setCustomValidity('')" onkeyup="this.value=$.trim(this.value)" >
						</td>
					</tr>
				</table>
				<button type="button" id="addRow" onclick="addClass()" style="margin-left: 1px;padding-left: 10px">+</button>
				<button type="button" id="deleteRow" onclick="deleteClass()" style="display:none; margin-left: 1px;padding-left: 10px">-</button>
				<br>	
				<input type="submit" value="Submit"/>
				<input type="button" value="Cancel"/>
		</form>
	</div>
	
	<script type="text/javascript" src="Config/AddClass.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</body>
</html>