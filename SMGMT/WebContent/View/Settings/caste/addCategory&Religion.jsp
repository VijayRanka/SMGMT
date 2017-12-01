<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.servletStore.settings.caste.model.CasteImpl"%>
<%@page import="com.servletStore.settings.caste.model.CasteDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            	<div class="col-lg-12 col-md-12 col-sm-6 col-xs-6">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                    	<ol class="breadcrumb breadcrumb-col-orange">
			              <li><a href="javascript:void(0);"><i class="material-icons">home</i> Home</a></li>
			              <li><a href="javascript:void(0);"><i class="material-icons">library_books</i> Library</a></li>
			              <li class="active"><i class="material-icons">archive</i> Data</li>
			            </ol>
                        <div class="header">
                            <h2>Category</h2>
                        </div>
                        
	
                        <div class="body">
                            <form id="form_validation" action="/SMGMT/Caste" method="POST">
	                            
								<div class="row clearfix">
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" id="casteCategoryName" name="casteCategoryName" required>
												<label class="form-label">Category Name</label>
											</div>
										</div>
									</div>
								</div>
                                
                                <button type="submit" name="category_btn" id="category_btn" value="category_btn" class="btn btn-primary waves-effect">Add Category</button>
                            </form>
                        </div>
                    </div>
                </div>
          
            <!-- #END# Basic Validation -->
            
            <!-- Basic Validation -->
           
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" >
                    <div class="card">
                    	<ol class="breadcrumb breadcrumb-col-orange">
			              <li><a href="javascript:void(0);"><i class="material-icons">home</i> Home</a></li>
			              <li><a href="javascript:void(0);"><i class="material-icons">library_books</i> Library</a></li>
			              <li class="active"><i class="material-icons">archive</i> Data</li>
			            </ol>
                        <div class="header">
                            <h2>Religion</h2>
                        </div>
                        
	
                        <div class="body">
                            <form id="form_advanced_validation" action="/SMGMT/Caste" method="POST">
	                            
								<div class="row clearfix">
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" id="religionName" name="religionName" required>
												<label class="form-label">Religion Name</label>
											</div>
										</div>
									</div>
								</div>
                                
                                <button type="submit" name="religion_btn" id="religion_btn" VALUE="religion_btn" class="btn btn-primary waves-effect">Add Religion</button>
                            </form>
                        </div>
                    </div>
                </div>
                </div>
            </div>
            
            <!-- #END# Basic Validation -->


 <!--  Table -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-6">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                CATEGORY LIST
                            </h2>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Category</th>
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
												<td>
													<a href="/SMGMT/Caste?category_id=${d.getCategory_id()}" data-toggle="tooltip" data-placement="bottom" title="Delete">
														<i class="material-icons">clear</i>
													</a>
													<a href="#" data-toggle="tooltip" data-placement="bottom" title="Update">
														<i class="material-icons">create</i>
													</a>
												</td>
											</tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                RELIGION LIST
                            </h2>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                
                                    <thead>
                                        <tr>
                                            <th>Sr.No.</th>
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
												<td>
													<a href="/SMGMT/Caste?religion_id=${d.getReligion_id()}" data-toggle="tooltip" data-placement="bottom" title="Delete">
														<i class="material-icons">clear</i>
													</a>
													<a href="#" data-toggle="tooltip" data-placement="bottom" title="Update">
														<i class="material-icons">create</i>
													</a>													
												</td>
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
            <!-- #END#  Table -->

       
        

        
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
    
    
    <script src="/SMGMT/Config/js/pages/ui/tooltips-popovers.js"></script>
    
    
    
 <!-- Jquery DataTable Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>
    
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
	<script src="/SMGMT/Config/js/pages/tables/jquery-datatable.js"></script>
<!--     Demo Js -->
    <script src="/SMGMT/Config/js/demo.js"></script>
</body>

</html>