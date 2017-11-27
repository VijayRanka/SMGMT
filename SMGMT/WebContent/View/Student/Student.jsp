<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<title>AxilBoard Bootstrap 4 Admin Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="description" content="AxilBoard Bootstrap 4 Admin Template">
<meta name="author" content="CodePassenger">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<!-- google fonts -->
</head>
<body>
	<form id="myForm" action="/SMGMT/Student.do" method="post">
	
		<!-- 	************************************** School Detail ************************************* -->
		
		<h4>School Details</h4>
		
		<label>School Name</label>
		<select name="schoolId" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected></option>
			<option value="1">School !</option>
			<option value="2">School @</option>
		</select>
		
		
		<label>Section</label>
		<select name="sectionId" required="required" oninvalid="this.setCustomValidity('Please Select Section')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected></option>
			<option value="2">Class X</option>
			<option value="3">Class V</option>
		</select>
		 
		<label>Class</label>
		<select name="classId" required="required" oninvalid="this.setCustomValidity('Please Select Class')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected></option>
			<option value="5">Class X</option>
			<option value="4">Class V</option>
		</select> 
		
		<label>PRN Number</label>
		<input type="text" id="" name="prnNo" placeholder="PRN Number"  required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label> Admission Date</label> 
		<input type="date" id="" name="admissionDate" required="required" oninvalid="this.setCustomValidity('Please Select Admission')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<!-- 	***********************************************Student Detail ******************************* -->
		<h4>Personal Details</h4>
		
		<label>First Name</label>
		<input type="text" id="" name="firstName" placeholder="First Name"  required="required" oninvalid="this.setCustomValidity('Please Enter First Name')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			
		<label>Middle Name</label>
		<input type="text" id="" name="middleName" placeholder="Middle Name"  required="required" oninvalid="this.setCustomValidity('Please Enter Middle Name')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Last	Name</label> 
		<input type="text" id="" name="lastName" placeholder="Last Name"  required="required" oninvalid="this.setCustomValidity('Please Enter Last Name')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			 
		<label>Gender</label>
		<input type="radio" id="gender" name="gender" checked="checked" >Male
		<input type="radio" id="gender"	name="gender" >Female
		<label>Date Of Birth</label>
		<input type="date" name="dob" required="required" oninvalid="this.setCustomValidity('Please Select Date Of Birth')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		<label>Blood Group</label> 
		 
		<ul class="pagination pg-round">

			<li class="page-item active"><a
				class="page-link waves-effect waves-effect">A+</a></li>
			<li class="page-item"><a
				class="page-link waves-effect waves-effect">O+</a></li>
			<li class="page-item"><a
				class="page-link waves-effect waves-effect">B+</a></li>
			<li class="page-item"><a
				class="page-link waves-effect waves-effect">AB+</a></li>
			<li class="page-item"><a
				class="page-link waves-effect waves-effect">A-</a></li>
			<li class="page-item"><a
				class="page-link waves-effect waves-effect">O-</a></li>
			<li class="page-item"><a
				class="page-link waves-effect waves-effect">B-</a></li>
			<li class="page-item"><a
				class="page-link waves-effect waves-effect">AB-</a></li>


		</ul>
		<input type="hidden" name="bloodGroop" id="bloodGroop" value="A+" />
		
		<label>Height</label>
		<input type="text" id="" name="heigth" placeholder="Height" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Weight</label>
		<input type="text" id="" name="weight" placeholder="Weight" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Minority</label>
		<input type="radio"	id="minority" name="minority" checked="checked" >YES
		<input type="radio" id="minority" name="minority" >NO
		
		<label>Physical	Handicap</label>
		<input type="radio" id="physicalHandicap" name="physicalHandicap" checked="checked">NO
		<input type="radio" id="physicalHandicap" name="physicalHandicap" >YES
		
		<label>Physical Handicap Type</label>
		<select name="physicalHandicapType">
			<option selected value="Male">Physical</option>
			<option value="Female">Handicap</option>
		</select>
		
		<label></label>  
		
		<!-- ******************************************Family Detail ******************************************* -->
		<h4>Family Details</h4>
		
		<label>Father Name</label>
		<input type="text" id="" name="fatherName" placeholder="Father Name"  required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			
		<label>Mother Name</label>
		<input type="text" id="" name="motherName" placeholder="Mother Name"  required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			
		<label>Nationality</label>
		<input type="text" id="" name="nationality" placeholder="Nationality"  required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Father Designation</label>
		<input type="text"	name="fatherDesignation" placeholder="Father Designation" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Father Income</label>
		<input type="text" id="" name="fatherIncome"  placeholder="Father Income" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Mother Tongue</label>
		<select name="motherTongue" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected value="Marathi">Marathi</option>
			<option value="Gujarati">Gujarati</option>
		</select> 
		
		<label>Cast Category</label>
		<select name="castCategoryId" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected value="Oprn">Open</option>
			<option value="OBC">OBC</option>
		</select>
		
		<label>Religious</label>
		<select name="religiousId" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected value="Hindu">Hindu</option>
			<option value="Musalim">Musalim</option>
		</select> 
		
		<label>Cast</label>
		<select name="castId" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected value="Patel">Patel</option>
			<option value="Marathi">Marathi</option>
		</select>

		 

		<!-- ******************************************Contact Detail******************************************* -->
		<h4>Contact Details</h4>

		<label>Address Line 1</label>
		<input type="text" id="" name="addressOne" placeholder="Address Line 1" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			
		<label>Address Line 2</label>
		<input type="text" id="" name="addressTwo" placeholder="Address Line 2" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>City</label>
		<input type="text" id="" name="city" placeholder="City" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">

		<label>State</label>
		<input type="text" name="state" placeholder="State" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Pin Code</label>
		 <input type="text" id="" name="pinCode" placeholder="Pin Code" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		
		<label>Country</label>
		<input type="text" name="country" placeholder="Country"  required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		


		 <label>Phone Number</label>
		 <input type="text" name="phoneNumber" placeholder="Phone Number" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		 
		 <label>Mobile Number</label>
		 <input type="text" name="mobileNumber" placeholder="Mobile Number" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
		 
		 <label>Email</label> 
		 <input type="text"	name="email" placeholder="Email"  required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">


		<!-- *********************************	Bank Detail ************************************************** -->

		<h4>Bank Details</h4>

		<label>Bank Name</label>
		<select name="bankId">
			<option selected value="Patel">SBI</option>
			<option value="Marathi">BOB</option>
		</select>
		
		<label>IFSC code</label>
		 <select name="ifscId">
			<option selected value="Patel">SBI0Z003</option>
			<option value="Marathi">BOBX007</option>
		</select>
		
		<label>Account No</label>
		<input type="text" name="accountNo" placeholder="Account No." required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">


		<!-- *********************************	Transportation Detail ************************************************** -->

		<h4>Transportation Details</h4>
		
		<label>Vehicle Name</label>
		<select name="vehicleId" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			<option selected value="Patel">BUSX002</option>
			<option value="Marathi">BUSX001</option>
		</select>
		
		<label>Transportation Rate</label>
		<input type="text" name="vehicleRate" placeholder="Transportation Rate." required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			
		<label>Transportation Discount</label>
		 <input	type="text" name="vehicleDiscount" placeholder="Transportation Discount." id="" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">


		<!-- *********************************	Previous Detail ************************************************** -->





		<h4>Previous Details</h4>








		<label>Institute Name</label>
		<input type="text" name="previousschoolId" placeholder="Institute Name" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			
		<label>Year</label>
		<input type="text" name="year" placeholder="Year" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">
			
		<label>Course</label>
	  	<input type="text" name="className" placeholder="Course" required="required" oninvalid="this.setCustomValidity('Please Select School')" oninput="setCustomValidity('')" onblur="this.value=$.trim(this.value)">


		<!-- *********************************	Profile Picture ************************************************** -->
		<h4>Profile Picture</h4>

		<label>Profile Picture</label> 
		Browse file..<input type="file" id="inputFile1" name="profilePicture">




		<!-- ***************************************Submit********************************************************************** -->
		<button type="submit" name="submit">Submit</button>
		<button type="submit">Cancel</button>
	</form>
</body>
</html>
