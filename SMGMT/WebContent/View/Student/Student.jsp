<!DOCTYPE html>
<html>

<head>
<!-- =======================	CSS Include ======================= -->
    <jsp:include page="/Common/cssJs.jsp"></jsp:include>
<!-- =======================	End CSS Include ======================= -->
</head>

<body class="theme-red">
<!-- =======================	Header Include ======================= -->
    <jsp:include page="/Common/header.jsp"></jsp:include>
<!-- =======================	End Header Include ======================= -->
<!-- =======================	Left Navbar Include ======================= -->
    <jsp:include page="/Common/left-navbar.jsp"></jsp:include>
<!-- =======================	End Left Navbar Include ======================= -->
  

    <section class="content">
        <div class="container-fluid">
            <!-- Basic Validation -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                    	<ol class="breadcrumb breadcrumb-col-orange">
			              <li><a href="javascript:void(0);"><i class="material-icons">home</i> Home</a></li>
			              <li><a href="javascript:void(0);"><i class="material-icons">library_books</i> Library</a></li>
			              <li class="active"><i class="material-icons">archive</i> Data</li>
			            </ol>
                        <div class="header">
                            <h2>Student Details</h2>
                        </div>
                        <div class="body">
                            <form id="form_validation" action="/SMGMT/Student.do" method="post">
                            	<!-- 	************************************** OFFICIAL DETAILS ************************************* -->
	                            <h2 class="card-inside-title">
	                            	OFFICIAL DETAILS
	                            </h2>
	                            <hr>
								<div class="row clearfix">
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
			                                    <select class="form-control show-tick" name="academicYearId" title="Select Academic Year" data-live-search="true" required="required">
			                                        <option></option>
			                                        <option>2016-2017</option>
			                                        <option>2017-2018</option>
			                                    </select>
			                                 </div>
			                              </div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
			                                    <select class="form-control show-tick" name="sectionId" title="Select Section" data-live-search="true" required="required">
			                                        <option></option>
			                                        <option>Burger, Shake and a Smile</option>
			                                        <option>Sugar, Spice and all things nice</option>
			                                    </select>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
			                                    <select class="form-control show-tick" name="stdId" title="Select Standard" data-live-search="true" required="required">
			                                        <option></option>
			                                        <option>Burger, Shake and a Smile</option>
			                                        <option>Sugar, Spice and all things nice</option>
			                                    </select>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
			                                    <select class="form-control show-tick" name="divId" title="Select Division" data-live-search="true" required="required">
			                                        <option></option>
			                                        <option>Burger, Shake and a Smile</option>
			                                        <option>Sugar, Spice and all things nice</option>
			                                    </select>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="bookNo" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">Book Number</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="grNo" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">General Register Number</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="datepicker form-control" name="admissionDate" required="required">
												<label class="form-label">Admission Date</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<div class="switch">
														<input type="checkbox" name="classAllow" id="md_checkbox_9" class="chk-col-teal" />
                                						<label for="md_checkbox_9">Class Allocated</label>
				                                </div>
											</div>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="previousSchool" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">Previous School Name</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<div class="switch">
													<select class="form-control show-tick" name="currentStdId" title="Select Standard" data-live-search="true" required="required">
				                                        <option></option>
				                                        <option>Burger, Shake and a Smile</option>
				                                        <option>Sugar, Spice and all things nice</option>
				                                    </select>
				                                </div>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<div class="switch">
													<select class="form-control show-tick" name="currentdivId" title="Select Division" data-live-search="true" required="required">
				                                        <option></option>
				                                        <option>Burger, Shake and a Smile</option>
				                                        <option>Sugar, Spice and all things nice</option>
				                                    </select>
				                                </div>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<div class="switch">
													<select class="form-control show-tick" name="medium" title="Select Medium" data-live-search="true" required="required">
				                                        <option></option>
				                                        <option>Burger, Shake and a Smile</option>
				                                        <option>Sugar, Spice and all things nice</option>
				                                    </select>
				                                </div>
											</div>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line">
												<div class="switch">
														<input type="checkbox" name="semiEnglish" id="semiEnglish" class="chk-col-teal" />
                                						<label for="semiEnglish">Semi English </label>
				                                </div>
											</div>
										</div>
									</div>
								</div>
								<!-- 	************************************** End OFFICIAL DETAILS ************************************* -->
								<!-- 	************************************** Personal Details ************************************* -->
								<h2 class="card-inside-title">
	                            	Personal Details
	                            </h2>
	                            <hr>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="firstName" title="Enter First Name" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">First Name</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="middleName" required>
												<label class="form-label">Middle Name</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="lastName" required>
												<label class="form-label">Last Name</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
                                    <div class="col-md-4">
										<div class="form-group form-float">
											<div class="demo-masked-input">
												<div class="input-group">
		                                            <span class="input-group-addon">
		                                                <i class="material-icons">date_range</i>
		                                            </span>
		                                            <div class="form-line">
		                                                <input type="text" name="dob" id="dob" onblur="getAge()" class="form-control date" title="Enter Date of Birth" placeholder="Date Of Birth(Ex: 04/06/1995)" >
		                                            </div>
		                                        </div>
		                                    </div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="age" id="age" required>
												<label class="form-label">Age</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="birthPlace" id="" required>
												<label class="form-label">Birth Place</label>
											</div>
										</div>
									</div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="radio" name="gender" id="male" class="with-gap"  checked>
			                                    <label for="male">Male</label>
			
			                                    <input type="radio" name="gender" id="female" class="with-gap">
			                                    <label for="female" class="m-l-20">Female</label>
											</div>
										</div>
									</div>
                                    <div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
												<select class="form-control show-tick" name="bloodGroop" title="Blood Group">
													<option></option>
			                                        <option>A+</option>
													<option>O+</option>
													<option>B+</option>
													<option>AB+</option>
													<option>A-</option>
													<option>O-</option>
													<option>B-</option>
													<option>AB-</option>
			                                    </select>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="heigth">
												<label class="form-label">Height</label>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
			                                   <input type="text" class="form-control" name="weight">
												<label class="form-label">Weight</label>
											</div>
										</div>
									</div>
                                </div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="studAadharNumber" title="Enter Aadhar Number" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">Aadhar Number</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="nationality" required>
												<label class="form-label"> Nationality</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<select class="form-control show-tick" name="motherTongue" title="Select Mother Tongue">
													<option value="Marathi">Marathi</option>
													<option value="Gujarati">Gujarati</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<select class="form-control show-tick" name="religious" title="Select Religious ">
													<option></option>
													<option value="Hindu">Hindu</option>
													<option value="Musalim">Musalim</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<select class="form-control show-tick" name="cast" title="Select Caste">
													<option></option>
													<option value="Patel">Patel</option>
													<option value="Marathi">Marathi</option>
												</select> 
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<select class="form-control show-tick" name="castCategory" title="Select Caste Category ">
													<option></option>
													<option value="Open">Open</option>
													<option value="OBC">OBC</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
                                    <div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												 <div class="switch">
<!-- 				                                    <label>Minority<input type="checkbox" checked onclick="alert(this.checked)"><span class="lever"></span></label> -->
														<input type="checkbox" id="minority" name="minority" class="chk-col-teal" />
                                						<label for="md_checkbox_9">Minority</label>
				                                </div>
											</div>
										</div>
									</div>
                                    <div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<div class="switch">
				                                    <label>Physical	Handicap<input type="checkbox" name="physicalHandicap" checked onclick="alert(this.checked)"><span class="lever"></span></label>	
				                                </div>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
			                                    <input type="text" class="form-control" name="physicalHandicapType">
			                                    <label class="form-label">Physical	Handicap Type</label>
											</div>
										</div>
									</div>
                                </div>
                                <!-- 	**************************************End Personal Details ************************************* -->
                                <!-- 	************************************** FATHER'S Details ************************************* -->
                                <h2 class="card-inside-title">
	                            	FATHER'S Details
	                            </h2>
	                            <hr>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="fatherName" title="Enter First Name" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">Name </label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="fatherMobileNo">
												<label class="form-label">Mobile Number</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="fatherAaadharNo">
												<label class="form-label">Aaadhar number</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="fatherDesignation" onblur="this.value=$.trim(this.value)">
												<label class="form-label">Occupation </label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="fatherIncome">
												<label class="form-label">Income</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												 <input type="text" class="form-control" name="fatherEmail">
												<label class="form-label">Email Address</label>
											</div>
										</div>
									</div>
								</div>
								<!-- 	**************************************End FATHER'S Details ************************************* -->
								<!-- 	************************************** MOTHER'S Details ************************************* -->
								<h2 class="card-inside-title">
	                            	MOTHER'S Details
	                            </h2>
	                            <hr>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="motherName" title="Enter First Name" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">Name </label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="motherMobileNo" required>
												<label class="form-label">Mobile Number</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="motherAaadharNo" required>
												<label class="form-label">Aaadhar number</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="motherDesignation" onblur="this.value=$.trim(this.value)">
												<label class="form-label">Occupation </label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="motherIncome">
												<label class="form-label"> Income</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="motherEmail">
												<label class="form-label">Email Address</label>
											</div>
										</div>
									</div>
								</div>
								<!-- 	************************************** End MOTHER'S Details ************************************* -->
								<!-- 	************************************** Contact Details ************************************* -->
								<h2 class="card-inside-title">
	                            	Contact Details
	                            </h2>
								<div class="row clearfix">
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="pinCode" id="pinCode" title="Enter Pincode" required onblur="this.value=$.trim(this.value); loadDoc()">
												<label class="form-label">Pin Code</label>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="taluk" id="taluk" title="Enter Taluk" required onblur="this.value=$.trim(this.value)">
												<label class="form-label">Taluk</label>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="district" id="district" required>
												<label class="form-label">District</label>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="state" id="state" required>
												<label class="form-label"> State</label>
											</div>
										</div>
									</div>
									
								</div>
<!-- 								<div class="row clearfix"> -->
										<div class="form-group form-float">
		                                    <div class="form-line">
		                                        <textarea name="addressOne" id="addressOne" cols="30" rows="3" class="form-control no-resize" required></textarea>
		                                        <label class="form-label">Address</label>
		                                    </div>
		                                </div>
<!-- 								</div> -->
								<!-- 	************************************** End Contact Details ************************************* -->
								<!-- 	************************************** Bank Details ************************************* -->
								<h2 class="card-inside-title">
	                            	Bank Details
	                            </h2>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="bankName" required>
												<label class="form-label"> Bank Name</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="ifscCode" required>
												<label class="form-label"> IFSC Code</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="accountNo" required>
												<label class="form-label"> Account No</label>
											</div>
										</div>
									</div>
								</div>
								<!-- 	**************************************End Bank Details ************************************* -->
								<!-- 	************************************** Transportation Details ************************************* -->
								<h2 class="card-inside-title">
	                            	Transportation Details
	                            </h2>
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<select class="form-control show-tick" name="busStop" title="Select Bus Stop Name">
													<option></option>
													<option value="SBI">SBI</option>
													<option value="BOB">BOB</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="vehicleMonth">
												<label class="form-label">Transportation Month</label>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="totRate">
												<label class="form-label">Transportation Discount</label>
											</div>
										</div>
									</div>
								</div>
								<!-- 	**************************************End Transportation Details ************************************* -->
								<!-- 	************************************** Submit ************************************* -->
                                <button class="btn btn-primary waves-effect" type="submit" name="submit">SUBMIT</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Basic Validation -->
        </div>
    </section>

<!--     Jquery Core Js -->
    <script src="/SMGMT/Config/plugins/jquery/jquery.min.js"></script>

<!--     Bootstrap Core Js -->
    <script src="/SMGMT/Config/plugins/bootstrap/js/bootstrap.js"></script>

<!--     Select Plugin Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-select/js/bootstrap-select.js"></script>

<!--     Slimscroll Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
    
<!--     Bootstrap Colorpicker Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>

<!--     Dropzone Plugin Js -->
    <script src="/SMGMT/Config/plugins/dropzone/dropzone.js"></script>

<!--     Input Mask Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script>

<!--     Multi Select Plugin Js -->
    <script src="/SMGMT/Config/plugins/multi-select/js/jquery.multi-select.js"></script>

<!--     Jquery Spinner Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-spinner/js/jquery.spinner.js"></script>

<!--     Bootstrap Tags Input Plugin Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

<!--     noUISlider Plugin Js -->
    <script src="/SMGMT/Config/plugins/nouislider/nouislider.js"></script>

<!--     Jquery Validation Plugin Css -->
    <script src="/SMGMT/Config/plugins/jquery-validation/jquery.validate.js"></script>

<!--     JQuery Steps Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-steps/jquery.steps.js"></script>

<!--     Sweet Alert Plugin Js -->
    <script src="/SMGMT/Config/plugins/sweetalert/sweetalert.min.js"></script>

<!--     Waves Effect Plugin Js -->
    <script src="/SMGMT/Config/plugins/node-waves/waves.js"></script>
    
<!--      Autosize Plugin Js -->
    <script src="/SMGMT/Config/plugins/autosize/autosize.js"></script>
    
<!--      Moment Plugin Js -->
    <script src="/SMGMT/Config/plugins/momentjs/moment.js"></script>
    
<!--     Bootstrap Material Datetime Picker Plugin Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>

<!--     Custom Js -->
    <script src="/SMGMT/Config/js/admin.js"></script>
    <script src="/SMGMT/Config/js/pages/forms/form-validation.js"></script>
	<script src="/SMGMT/Config/js/pages/forms/basic-form-elements.js"></script>
	<script src="/SMGMT/Config/js/pages/forms/advanced-form-elements.js"></script>
<!--     Demo Js -->
    <script src="/SMGMT/Config/js/demo.js"></script>
<script type="text/javascript">
//====================================== PINCODE SEARCH =====================================
	function loadDoc() {
		var pinNew="";
		$.getJSON("/SMGMT/Config/json/PincodeJson.json", function(json) {
			pinNew=json;
			myFunction(pinNew);
		});
	 
	}
	function myFunction(x) {
		var pinNo=document.getElementById("pinCode").value
		document.getElementById("taluk").value="";
	    document.getElementById("district").value="";
	    document.getElementById("state").value="";
	  var i;
	  for (i = 0; i <x.length; i++) {
		var pin=x[i].pincode;
	    if(pin == pinNo){
	      //document.getElementById("pinNo").value=x[i].pincode;
	      document.getElementById("taluk").value=x[i].taluk;
	      document.getElementById("taluk").focus();
	      document.getElementById("district").value=x[i].districtname;
	      document.getElementById("district").focus();
	      document.getElementById("state").value=x[i].statename;
	      document.getElementById("state").focus();
	      document.getElementById("addressOne").focus();
		  break;
	     }
	  }
	}
//====================================== END PINCODE SEARCH =====================================
//====================================== AGE Calculator  =====================================
	function getAge() {
		var inputDate = document.getElementById("dob").value;
		var newDate=inputDate.split("/");
		

	    var byr = newDate[2];
	    var bmo = newDate[1];
	    bmo=bmo-1;
	    var bday = newDate[0];
	    
	    var byr;
	    var age;
	    var now = new Date();
	    tday=now.getDate();
	    tmo=(now.getMonth());
	    tyr=(now.getFullYear());
	    
	    if((tmo > bmo)||(tmo==bmo & tday>=bday)){
	    	age=byr;
	    }
	    else{
	    	age=parseInt(byr)+parseInt(1);
	    }
	    document.getElementById("age").value=(tyr-age);
	    
}
//======================================End  AGE Calculator  =====================================
</script>
</body>

</html>