<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<title></title>
<!-- =======================	CSS Include ======================= -->
    <jsp:include page="/Common/cssJs.jsp"></jsp:include>
<!-- =======================	End CSS Include ======================= -->
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
							<li class="breadcrumb-item"><a href="#"><i
									class="ti-home"></i></a></li>
							<li class="breadcrumb-item"><a href="#">Forms</a></li>
							<li class="breadcrumb-item active">Wizard</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="box-widget">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>Student Details</h4>
									</div>
								</div>
							</div>

							<br>
							<form id="myForm" class="form-common valided-form">
								<div class="col-md-11">
									<div class="box-widget offset-lg-1">
										<div class="panel panel-default">
											<div class="panel-heading">
												<div class="panel-title">
													<h4>Personal Details</h4>
												</div>
											</div>
											<div class="panel-body">
												<div class="validation-block">
													<div class="row">
														<div class="col-lg-12 offset-lg-0">
															<div class="row">
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">First Name</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Middle Name</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Last Name</label>
																</div>
																<div class="form-group col-lg-4">
																	<input class="form-control" type="text"
																		placeholder="First Name" id="" required>
																</div>
																<div class="form-group col-lg-4">
																	<input class="form-control" type="text"
																		placeholder="Middle Name" id="" required>
																</div>
																<div class="form-group col-lg-4">
																	<input class="form-control" type="text"
																		placeholder="Last Name" id="" required>
																</div>
															</div>
															<div class="row">
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Gender</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Date Of Birth</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Blood Group</label>
																</div>
																<div class="form-group col-lg-4">
																	<input id="userName" type="text"
																		class="form-control required">
																</div>
																<div class="form-group col-lg-4">
																	<input id="userName" type="text"
																		class="form-control required">
																</div>
																<div class="form-group col-lg-4">
																	<input type="text"
																		class="form-control renter-block required">
																</div>
															</div>
														</div>
													</div>
													<!-- validation-block -->
												</div>
												<!--panel Body -->
											</div>
											<!--panel -->
										</div>
									</div>
									</div>
<!-- ******************************************Contact Detail******************************************* -->
									<div class="col-md-11">
									<div class="box-widget offset-lg-1">
										<div class="panel panel-default">
											<div class="panel-heading">
												<div class="panel-title">
													<h4>Contact Details</h4>
												</div>
											</div>
											<div class="panel-body">
												<div class="validation-block">
													<div class="row">
														<div class="col-lg-12 offset-lg-0">
															<div class="row">
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">First Name</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Middle Name</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Last Name</label>
																</div>
																<div class="form-group col-lg-4">
																	<input class="form-control" type="text"
																		placeholder="First Name" id="" required>
																</div>
																<div class="form-group col-lg-4">
																	<input class="form-control" type="text"
																		placeholder="Middle Name" id="" required>
																</div>
																<div class="form-group col-lg-4">
																	<input class="form-control" type="text"
																		placeholder="Last Name" id="" required>
																</div>
															</div>
															<div class="row">
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Gender</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Date Of Birth</label>
																</div>
																<div class="form-group mrg-b-0 col-4">
																	<label for="userName">Blood Group</label>
																</div>
																<div class="form-group col-lg-4">
																	<input id="userName" type="text"
																		class="form-control required">
																</div>
																<div class="form-group col-lg-4">
																	<input id="userName" type="text"
																		class="form-control required">
																</div>
																<div class="form-group col-lg-4">
																	<input type="text"
																		class="form-control renter-block required">
																</div>
															</div>
														</div>
													</div>
													<!-- validation-block -->
												</div>
												<!--panel Body -->
											</div>
											<!--panel -->
										</div>
									</div>
									</div>
									
									<div class="offset-2">
										<button type="submit"
											class="btn btn-raised btn-primary waves-effect waves-light">Submit</button>
										<button type="submit"
											class="btn btn-outline-default btn-xs btn-raised waves-effect">Cancel</button>
									</div>
							</form>

						</div>
					</div>










				</div>
				<jsp:include page="/Common/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
<!-- =======================	JS Include ======================= -->
    <jsp:include page="/Common/js.jsp"></jsp:include>
<!-- ======================= End	JS Include ======================= -->
</body>
</html>
