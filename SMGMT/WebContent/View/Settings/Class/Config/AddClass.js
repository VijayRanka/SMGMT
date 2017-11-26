/**
 * Himanshu Patel
 */
function loadFunction() {
	document.getElementById("classRoom1").focus();
}

function addClass()
{

	var insertTable = document.getElementById("display-textfeild");
	var Row = insertTable.rows;
	var numrows = Row.length;

	var row = insertTable.insertRow(numrows);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	cell1.innerHTML = " Class " + (numrows + 1);
	cell2.innerHTML = "<input type='text' name='classRoom" + (numrows + 1) +"' id='classRoom" + (numrows + 1) + "' placeholder='Class "+ (numrows + 1) + "' required=\"required\" oninvalid=\"this.setCustomValidity('Please Enter Class "+ (numrows + 1) + "!')\" oninput=\"setCustomValidity('')\" onkeyup=\"this.value=$.trim(this.value)\" />";
	document.getElementById("classRoom" + (numrows + 1)).focus();
	document.getElementById("deleteRow").style.display = 'inline';
	document.getElementById("rowCount").value=numrows+1;
}

function deleteClass()
{
	var insertTable = document.getElementById("display-textfeild");
	var Row = insertTable.rows;
	var numrows = Row.length;

	if (numrows > 1) {
		var row = insertTable.deleteRow(numrows - 1);
		document.getElementById("rowCount").value=numrows-1;
	}
	if (numrows === 2) {
		document.getElementById('deleteRow').style.display = 'none';

	}

}