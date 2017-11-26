<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	
	<title>AxilBoard Bootstrap 4 Admin Template</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="description" content="AxilBoard Bootstrap 4 Admin Template">
	<meta name="author" content="CodePassenger">
	
	<!-- google fonts -->
	<link href="https://fonts.googleapis.com/css?family=css?family=Robot%7cMaterial+Icons" rel="stylesheet" type='text/css'>
	
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/bootstrap-toggle.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/bootstrap-formhelpers.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/jquery-ui.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/bootstrap-slider.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/uploadfile.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/emoji.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/fullcalendar.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/lobipanel.min.css">
    <link rel="stylesheet" href="/SMGMT/Config/assets/css/jquery.steps.css">
	
	<!-- Material Design CSS -->
	<link rel="stylesheet" href="/SMGMT/Config/assets/css/bootstrap-material-design.min.css">
	<link rel="stylesheet" href="/SMGMT/Config/assets/css/ripples.min.css">
	<link rel="stylesheet" href="/SMGMT/Config/assets/css/mdb.min.css">
	
	<!-- Responsive Mobile Menu -->
	<link rel="stylesheet" href="/SMGMT/Config/assets/css/responsive-menu/jquery.accordion.css">
	<link rel="stylesheet" href="/SMGMT/Config/css/vertical-menu.css">
	
    <link rel="stylesheet" href="/SMGMT/Config/css/app.css">
	
	<link rel="stylesheet" href="/SMGMT/Config/css/responsive.css">
	
	<link rel="stylesheet" href="/SMGMT/View/Staff/config/custom.css">
</head>
<body class="menu-collapsed">
	
	
	<jsp:include page="/Common/header.jsp"></jsp:include>
	<jsp:include page="/Common/left-navbar.jsp"></jsp:include>
	
	
	
	
	<div class="apps-container-wrap page-container">
		<div class="page-content">
			<div class="container-fluid">
				<div class="row">
					<div class="page-title-block">
						<h4>Wizard</h4>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i class="ti-home"></i></a></li>
							<li class="breadcrumb-item"><a href="#">Forms</a></li>
							<li class="breadcrumb-item active">Wizard</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="box-widget">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>Add Staff</h4>
									</div>
								</div>
								<div class="panel-body">
									<div class="form-wizard-block form-block">
										<form id="form-wizard-form" class=" form-common" action="#">
											<div>
												<div class="form-wizard-circle">
													<span class="wizard-circle">01</span>
													<p class="wizard-text">Registration</p>
													<i class="fa fa-angle-right wizard-icon" aria-hidden="true"></i>
												</div>
												<section>
													<h3 class="display-off">one</h3>
													
													
													<div class="row lab">
														<div class="form-group mrg-b-0 col-lg-12 ">
															<label for="userName">Your Name</label>
														</div>
														<div class="col-lg-2"></div>
														<div class="form-group col-lg-4">
															<input id="userName" type="text" class="form-control extra-small required" placeholder="First Name">
														</div>
														<div class="form-group col-lg-4">
															<input  type="text" class="form-control extra-small required" placeholder="Last Name">
														</div>
													</div>
													
													<div class="row lab">
														 <div class="form-group mrg-b-0 col-12 lab">
															<label for="username">User Name</label>
														</div>
														<div class="col-lg-2"></div>
														<div class="form-group col-lg-4">
															<input  type="text" id="username" class="form-control extra-small required" placeholder="User Name">
														</div>
													</div>	
													
													
													<div class="row">
														<div class="form-group mrg-b-0 col-12">
															<label for="email">Email</label>
														</div>
														
														<div class="form-group col-lg-6">
															<input id="email"  type="email" class="form-control extra-small required email" placeholder="Enter Email">
														</div>
														
													</div>
													
													<div class="row">
														<div class="form-group mrg-b-0 col-12">
															<label for="password">Password</label>
														</div>
														<div class="form-group col-lg-6">
															<input id="password" type="password" class="form-control extra-small required" placeholder="Passwoed">
														</div>
														<div class="form-group col-lg-6">
															<input id="confirm" type="password" class="form-control renter-block extra-small required" placeholder="Re type password">
														</div>
													</div>
												</section>
												<div class="form-wizard-circle">
													<span class="wizard-circle">02</span>
													<p class="wizard-text">General Information</p>
													<i class="fa fa-angle-right wizard-icon" aria-hidden="true"></i>
												</div>
												<section>
													<h3 class="display-off">one</h3>
													<div class="form-group">
														<label for="name">First Name</label>
														<input id="name" type="text" class="form-control required" placeholder="First Name">
													</div>
													<div class="form-group">
														<label for="surname">Last Name</label>
														<input id="surname" type="text" class="form-control required" placeholder="Last Name">
													</div>
													<div class="form-group">
														<label for="address">Address</label>
														<input id="address" type="text" class="form-control" placeholder="Address">
													</div>
												</section>
												<div class="form-wizard-circle">
													<span class="wizard-circle">03</span>
													<p class="wizard-text">Education</p>
													<i class="fa fa-angle-right wizard-icon" aria-hidden="true"></i>
												</div>
												<section>
													<h3 class="display-off">one</h3>
													<div class="form-group">
														<label for="primaryEducation">Primary</label>
														<input id="primaryEducation" type="text" class="form-control required" placeholder="Primary Education">
													</div>
													<div class="form-group">
														<label for="secondaryEducation">Secondary</label>
														<input id="secondaryEducation" type="text" class="form-control required" placeholder="Secondary Education">
													</div>
													<div class="form-group">
														<label for="graduation">Graduation</label>
														<input id="graduation" type="text" class="form-control required" placeholder="Graduation">
													</div>
												</section>
												<div class="form-wizard-circle">
													<span class="wizard-circle">04</span>
													<p class="wizard-text">Work Experiation</p>
												</div>
												<section>
													<h3 class="display-off">one</h3>
													<div class="form-group">
														<label for="pastJob">Past Job</label>
														<input id="pastJob" type="text" class="form-control required" placeholder="Past Job">
													</div>
													<div class="form-group">
														<label for="currentJob">Current Job</label>
														<input id="currentJob" type="text" class="form-control required" placeholder="Current Job">
													</div>
													<div class="form-group">
														<label for="futurePlan">Future Plan</label>
														<input id="futurePlan" type="text" class="form-control required" placeholder="Future Plan">
													</div>
												</section>
											</div>
										</form>
									</div>
								</div><!--panel Body -->
							</div><!--panel -->
						</div><!-- widget-module -->
					</div>
				</div>
				
				<jsp:include page="/Common/footer.jsp"></jsp:include>
	
			</div>
		</div>
	</div>
	<script src="/SMGMT/Config/assets/js/jquery-3.2.1.min.js"></script>
    <script src="/SMGMT/Config/assets/js/tether.min.js"></script>
    <script src="/SMGMT/Config/assets/js/bootstrap.min.js"></script>
    <script src="/SMGMT/Config/assets/js/bootstrap-toggle.min.js"></script>
    <script src="/SMGMT/Config/assets/js/bootstrap-formhelpers.min.js"></script>
    <script src="/SMGMT/Config/assets/js/bootstrap-formhelpers-languages.js"></script>
    <script src="/SMGMT/Config/assets/js/mdb.min.js"></script>
    <script src="/SMGMT/Config/assets/js/bootstrap-slider.min.js"></script>
	<script src="/SMGMT/Config/assets/js/validator.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.inputmask.bundle.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery-tree-view.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.uploadfile.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.slimscroll.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.simpleWeather.min.js"></script>
	<script src="/SMGMT/Config/assets/js/tinymce/tinymce.min.js"></script>
	<script src="/SMGMT/Config/assets/js/fullcalendar/moment.min.js"></script>
	<script src="/SMGMT/Config/assets/js/fullcalendar/fullcalendar.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery-ui.min.js"></script>
	<script src="/SMGMT/Config/assets/js/lobipanel.min.js"></script>
	<script src="/SMGMT/Config/assets/js/classie.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.steps.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.validate.min.js"></script>
	
	<!-- Material-JS -->
	<script src="/SMGMT/Config/assets/js/material.min.js"></script>
	<script src="/SMGMT/Config/assets/js/ripples.min.js"></script>
	
	<!-- Responsive Mobile Menu -->
	<script src="/SMGMT/Config/assets/js/responsive-menu/jquery.accordion.js"></script>
	
	<!-- Counter-Up-JS -->
	<script src="/SMGMT/Config/assets/js/jquery.waypoints.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.counterup.min.js"></script>
	
	<!-- Emoji-JS -->
	<script src="/SMGMT/Config/assets/js/emoji/config.js"></script>
	<script src="/SMGMT/Config/assets/js/emoji/util.js"></script>
	<script src="/SMGMT/Config/assets/js/emoji/jquery.emojiarea.js"></script>
	<script src="/SMGMT/Config/assets/js/emoji/emoji-picker.js"></script>

    <script src="/SMGMT/Config/js/custom.js"></script>
</body>
</html>
