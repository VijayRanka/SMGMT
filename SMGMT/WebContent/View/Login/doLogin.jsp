<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
	
	<title>SMGMT</title>
	<jsp:include page="/Common/cssJs.jsp"></jsp:include>
	<link rel="stylesheet" href="config/doLogin.css">
	<script src="config/doLogin.js"></script>
</head>
<body class="menu-collapsed" onload="work()">
	<div class="apps-container-wrap page-container widget-page lft-widget">
		<div class="page-content">
			<div class="container-fluid">
				<div class="row">
					<div class="page-banner">
						<div class="banner-logo-block">
							<a href="#">
								<img src="/SMGMT/Config/images/background.png" alt="img">
							</a>
						</div>
					</div>
				</div>
				<div class="widget-form-block widget-prop">
					<div class="box-widget">
						<div class="panel-default">
							<div class="widget-block-title">
								<h3>Login This Way</h3>
								<p>Please enter your credentials to login.</p>
							</div>
							<div class="form-block">
								<form class="form-common" action="/SMGMT/LoginAction" method="post">
									<div class="form-group row">
										<div class="col-md-12">
											<input type="text" class="form-control" id="username" name="username" placeholder="User Name" required>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<input type="password" class="form-control" id="userpass" name="userpass" placeholder="Password"" required>
										</div>
									</div>
									<div class="form-group row form-check-row">
										<div class="col-md-6">
											<div class="form-check">
												<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input">
													<span class="custom-control-indicator"></span>
													<span class="custom-control-description">Remember Me</span>
												</label>
											</div>
										</div>
										<div class="col-md-6">
											<div class="forgot-link-block">
												<a href="#" class="forgot-link">Forget Password?</a>
											</div>
										</div>
									</div>
									<div class="form-group row last">
										<div class="col-md-12">
											<div class="form-btn-block">
												<button type="submit" name="Login" value="Login" class="btn btn-raised btn-primary waves-effect waves-light btn-block">Login</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div><!-- panel -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/Common/js.jsp"></jsp:include>
</body>
</html>