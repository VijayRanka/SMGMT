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
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                    	<ol class="breadcrumb breadcrumb-col-orange">
			              <li><a href="javascript:void(0);"><i class="material-icons">home</i> Home</a></li>
			              <li><a href="javascript:void(0);"><i class="material-icons">library_books</i> Library</a></li>
			              <li class="active"><i class="material-icons">archive</i> Data</li>
			            </ol>
                        <div class="header">
                            <h2>Caste</h2>
                        </div>
                        
	
                        <div class="body">
                            <form id="form_validation" action="/SMGMT/Caste" method="POST">
	                            
	                            
   	            		      	<div class="col-md-4">
                                    <p>
                                        <b>Category</b>
                                    </p>
                                    <select class="form-control show-tick" name="category" id="category">
                                    
                                   		<%
			 								CasteDAO castedao=new CasteImpl();
			 								request.setAttribute("list",castedao.getCategoryDetails());
										%>
										<c:forEach items="${list}" var="u">  
										
										 <option value="${u.getCategory_id()}">${u.getCasteCategoryName()}</option>
										
										</c:forEach>
                                    </select>

                                </div>
	                            
	                            
	            		      	<div class="col-md-4">
                                    <p>
                                        <b>Religion</b>
                                    </p>
                                    <select class="form-control show-tick"  name="religion" id="religion">
                                    
                                   		<%
			 								request.setAttribute("list",castedao.getReligionDetails());
										%>
										<c:forEach items="${list}" var="u">  
										
										 <option value="${u.getReligion_id()}">${u.getReligionName()}</option>
										
										</c:forEach>
                                    </select>

                                </div>
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
								<div class="row clearfix">
									<div class="col-md-4">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" id="casteName" name="casteName" required>
												<label class="form-label">Caste Name</label>
											</div>
										</div>
									</div>
								</div>
                                
                                <button type="submit" name="caste_btn" id="caste_btn" value="caste_btn" class="btn btn-primary waves-effect">Add Caste</button>
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