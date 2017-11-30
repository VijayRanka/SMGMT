<%@page import="com.servletStore.settings.caste.model.CasteImpl"%>
<%@page import="com.servletStore.settings.caste.model.CasteDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
	 
	<title>SMGMT</title>

</head>
<body class="menu-collapsed">


	
	<jsp:include page="/Common/header.jsp"></jsp:include>
	<jsp:include page="/Common/left-navbar.jsp"></jsp:include>
	
	<div class="apps-container-wrap page-container">
		<div class="page-content">
			<div class="container-fluid">
				<div class="row">
					<div class="page-title-block">
						<h4>Caste</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#"><i class="ti-home"></i></a></li>
						<li class="breadcrumb-item"><a href="#">Forms</a></li>
						<li class="breadcrumb-item active">Caste Category & Religion</li>
					</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="box-widget">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>Caste Category</h4>
									</div>
								</div>
								<div class="panel-body">
									<div class="form-block">
										<form action="/SMGMT/Caste" class="form-common" method="post" >
											<div class="form-group">
												<label for="formGroupExampleInput">Category</label>
												<input type="text" class="form-control" id="casteCategoryName" name="casteCategoryName" placeholder="Enter Caste Category">
											</div>
											<div class="form-btn-block">
												<button type="submit" name="category_btn" id="category_btn" class="btn btn-raised btn-primary waves-effect waves-light">Submit</button>
												<button type="button" class="btn btn-outline-default btn-xs btn-raised waves-effect">Cancel</button>
											</div>
										</form>
									</div>
								</div><!--panel Body -->
							</div><!--panel -->
						</div><!-- widget-module -->
					</div>

					<div class="col-lg-6">
						<div class="box-widget">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>Religion</h4>
									</div>
								</div>
								<div class="panel-body">
									<div class="form-block">
										<form action="/SMGMT/Caste" class="form-common" method="post" >
											<div class="form-group">
												<label for="formGroupExampleInput">Religion</label>
												<input type="text" class="form-control" id="religionName" name="religionName" placeholder="Enter Religion">
											</div>
											<div class="form-btn-block">
												<button type="submit" name="religion_btn" id="religion_btn" class="btn btn-raised btn-primary waves-effect waves-light">Submit</button>
												<button type="button" class="btn btn-outline-default btn-xs btn-raised waves-effect">Cancel</button>
											</div>
										</form>
									</div>
								</div><!--panel Body -->
							</div><!--panel -->
						</div><!-- widget-module -->
					</div>
				</div>
				
				
				
				<div class="row">
					<div class="col-lg-6">
						<div class="box-widget widget-module">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>Category Table</h4>
									</div>
								</div>
								<div class="panel-body">
									<div class="basic-datatable-block">
										<table class="display table table-bordered basic-data-table">
											<thead>
												<tr>
													<th>NO.</th>
													<th>Category Name</th>
													<th>Action</th>
												</tr>
											</thead>
											<%
												CasteDAO casteDAO=new CasteImpl();
												request.setAttribute("display_CasteCategory", casteDAO.getCategoryDetails());
											 	int i=0;
											%>
											
											<tbody>												
												<c:forEach items="${display_CasteCategory}" var="d">
													<tr>
														<td><%=(++i) %></td>
														<td><c:out value="${d.casteCategoryName}"></c:out></td>
														<td><a href="/SMGMT/Caste?category_id=${d.getCategory_id()}">Delete</a></td>
													</tr>	
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="box-widget widget-module">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>Religion Table</h4>
									</div>
								</div>
								<div class="panel-body">
									<div class="basic-datatable-block">
										<table class="display table table-bordered basic-data-table">
											<thead>
												<tr>
													<th>NO.</th>
													<th>Religion</th>
													<th>Action</th>
												</tr>
											</thead>
											<%
												request.setAttribute("display_Religion", casteDAO.getReligionDetails());
											 	i=0;
											%>											
											<tbody>
												<c:forEach items="${display_Religion}" var="d">
													<tr>
														<td><%=(++i) %></td>
														<td><c:out value="${d.religionName}"></c:out></td>
														<td><a href="/SMGMT/Caste?religion_id=${d.getReligion_id()}">Delete</a></td>
													</tr>	
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		<jsp:include page="/Common/footer.jsp"></jsp:include>
	</div>
</div>
	
	
	
	
	
	
	
	
	
	
	<!-- page-container -->
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
	<script src="/SMGMT/Config/assets/js/jquery.steps.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.validate.min.js"></script>
	
	<!-- Material-JS -->
	<script src="/SMGMT/Config/assets/js/material.min.js"></script>
	<script src="/SMGMT/Config/assets/js/ripples.min.js"></script>
	
	<!-- Responsive Mobile Menu -->
	<script src="/SMGMT/Config/assets/js/responsive-menu/jquery.accordion.js"></script>
	
	<!-- Data-Table-JS -->
	<script src="/SMGMT/Config/assets/js/datatable/jquery.dataTables.min.js"></script>
	<script src="/SMGMT/Config/assets/js/datatable/dataTables.bootstrap.min.js"></script>
	<script src="/SMGMT/Config/assets/js/datatable/dataTables.select.min.js"></script>
	<script src="/SMGMT/Config/assets/js/datatable/dataTables.buttons.min.js"></script>
	<script src="/SMGMT/Config/assets/js/datatable/buttons.flash.min.js"></script>
	<script src="/SMGMT/Config/assets/js/datatable/jszip.min.js"></script>
	<script src="/SMGMT/Config/assets/js/datatable/vfs_fonts.js"></script>
	<script src="/SMGMT/Config/assets/js/datatable/buttons.html5.min.js"></script>
	<script src="/SMGMT/Config/js/datatable-custom.js"></script>
	
	<!-- Chart-JS -->
    <script src="/SMGMT/Config/assets/js/chart/Chart.bundle.min.js"></script>
	<script src="/SMGMT/Config/js/chart-custom.js"></script>
	
	<!-- Counter-Up-JS -->
	<script src="/SMGMT/Config/assets/js/jquery.waypoints.min.js"></script>
	<script src="/SMGMT/Config/assets/js/jquery.counterup.min.js"></script>
	
	<!-- Emoji-JS -->
	<script src="/SMGMT/Config/assets/js/emoji/config.js"></script>
	<script src="/SMGMT/Config/assets/js/emoji/util.js"></script>
	<script src="/SMGMT/Config/assets/js/emoji/jquery.emojiarea.js"></script>
	<script src="/SMGMT/Config/assets/js/emoji/emoji-picker.js"></script>
	
	<!-- Vector-Map-Ammap-JS -->
	<script src="/SMGMT/Config/assets/js/ammap/ammap.js"></script>
	<script src="/SMGMT/Config/assets/js/ammap/worldLow.js"></script>
	<script src="/SMGMT/Config/assets/js/ammap/black.js"></script>
	
    <script src="/SMGMT/Config/js/custom.js"></script>
	
</body>
</html>
