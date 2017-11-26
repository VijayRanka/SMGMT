<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/SMGMT/Division" method="post">
	<h4>Division Form</h4>
		<div>
			<label>School</label>
			<select name="school">
				<option value="abc">abc</option>
				<option value="pqr">pqr</option>
				<option value="lmn">lmn</option>
				<option value="opq">opq</option>
				<option value="rst">rst</option>
				<option value="xyz">xyz</option>
			</select>
		</div>
		
		<br>
		
		<div>
			<label>Section</label>
			<select name="section">
				<option>primary</option>
				<option>secondary</option>
				<option>high secondary</option>
				<option>jr college</option>
				<option>college</option>
			</select>
		</div>
		
		<br>
		
		<div>
			<label>Class</label>
			<select name="getclass">
				<option value="1st">1st</option>
				<option value="2st">2nd</option>
				<option value="3st">3rd</option>
				<option value="4st">4th</option>
				<option value="5st">5th</option>
				<option value="6st">6th</option>
				<option value="7st">7th</option>
				<option value="8st">8th</option>
				<option value="9st">9th</option>
			</select>
		</div>
		
		<br>
		
		<div>
		<table id="display-textfeild">
			<tr>				
				<td>Division:<input type="text" name="division" placeholder="Division 1" /></td>
				<td><button type="button" onclick="insertDiv()">+</button></td>
				<td><button type="button" onclick="deleteDiv()">-</button></td>
			</tr>
		</table>
		</div>
		<div>
		
		</div>
		
		<br>
		
		<div>
			<input type="submit" value="Submit"/>
			<input type="button" value="Cancel">
		</div>
	
		
	</form>
	<script>
			function insertDiv()
			{
				var insertTable=document.getElementById("display-textfeild");
				var Row=insertTable.rows;
				var numrows=Row.length;
				var row = insertTable.insertRow(numrows);
			    var cell1 = row.insertCell(0);
			    cell1.innerHTML = "<input type='text' id='div' placeholder='div"+ (numrows+1) +"' />";

			}
			
			function deleteDiv()
			{
				var deleteRows=document.getElementById("display-textfeild");
				var Rows = deleteRows.rows;
			    var numRows = Rows.length;
			    if(numRows>1){
			    	deleteRows.deleteRow(numRows-1);
			    }
			}
	</script>
	
</body>
</html>