<!DOCTYPE html>
<%@page import="utility.SysDate"%>
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
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                    	<ol class="breadcrumb breadcrumb-col-orange">
			              <li><a href="javascript:void(0);"><i class="material-icons">home</i> Home</a></li>
			              <li><a href="javascript:void(0);"><i class="material-icons">library_books</i> Library</a></li>
			              <li class="active"><i class="material-icons">archive</i> Data</li>
			            </ol>
                        <div class="header">
                            <h2>Inword Register</h2>
                        </div>
                        <div class="body">
                        	
                        	<form action="/SMGMT/InwordRegister" id="form_validation" method="Post">	                           
								<div class="row clearfix">									 						
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="school_name" id="SchoolName" pattern="[a-z A-Z ,]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Inword No</label>
											</div>
										</div>
									</div>	
									<div class="col-md-6">
										<div class="form-group form-float">
										<%
										SysDate requireddate=new SysDate();
										%>
											<div class="form-line">
												<input type="text" class="datepicker form-control" value="<%=requireddate.todayDate() %>" name="date_time" placeholder="Please choose a date..." required="required">
											</div>
										</div>
									</div>						
												
									<div class="col-md-6">
										<div class="form-group form-float">
											<select class="form-control show-tick" name="sectionList" multiple="multiple" title="Sender Name" data-live-search="true">
									          <option ></option>   
								  			 </select>
								  		  </div><!-- <input type="button" href="#senderName" id="senderName" data-toggle="modal" value="+" style="width: 20px;height: 25px;margin-left: 208px;"/> -->											
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<select class="form-control show-tick" name="sectionList" multiple="multiple" title="Subject" data-live-search="true">
									          <option ></option>   
								  			 </select>
								  		  </div>	
								  		 <!--  <input type="button" href="#subject" id="subject"  value="+" style="width: 20px;height: 25px;"/>	 -->									
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line" style="margin-top: -20px;">
												<textarea type="text" class="form-control" name="school_address"  pattern="[a-z A-Z ,]*" onkeyup="this.value=this.value.toUpperCase()" required></textarea>
												<label class="form-label">Address</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<select class="form-control show-tick" name="sectionList" multiple="multiple" title="Description" data-live-search="true">
									          <option ></option>   
								  			 </select><!-- <input type="button" href="#description" id="description"  value="+" style="width: 20px;height: 25px;"/> -->
								  		  </div>											
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="school_address"  pattern="[a-z A-Z ,]*" onkeyup="this.value=this.value.toUpperCase()" required></input>
												<label class="form-label">Register Name</label>
											</div>
										</div>										
									</div>								
								</div>
													
								<div class="footer">						
									 <button type="submit" name="SchoolSubmitBtn" class="btn btn-success waves-effect" >SUBMIT</button>
                                 	 <button type="button" class="btn btn-danger waves-effect" >EXIT</button>
                            	</div>
                            
                            </form>
                            
                           
                        </div>
                    </div>
                </div>
                
                 <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" >
                    <div class="card">
                        <div class="header">
                            <h2>
                               Inword Documents
                             </h2>
                        </div>
                        <div class="body table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No</th>
                                        <th>Document Name</th>
                                        <th>Select</th>
                                    </tr>
                                </thead>
                                <tbody>
                             
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
                
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Inword Register Details
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                    <thead>
                                        <tr>
                                            <th>Sr.No</th>
                                            <th>Inward No</th>
                                            <th>Date</th>
                                            <th>Name Of Receiver</th>
                                            <th>Address</th>
                                            <th>Subject</th>
                                            <th>Description</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                
            </div>
            <!-- #END# Basic Validation -->
        </div>
    </section>
    
     <div class="modal fade" id="senderName" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body">
                          
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-link waves-effect">SAVE CHANGES</button>
                            <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                        </div>
                    </div>
                </div>
            </div>
    

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

<!-- Custom Js -->
    <script src="/SMGMT/Config/js/admin.js"></script>
    <script src="/SMGMT/Config/js/pages/forms/form-validation.js"></script>
    <script src="/SMGMT/Config/js/pages/tables/jquery-datatable.js"></script>
    <script src="/SMGMT/Config/js/pages/forms/basic-form-elements.js"></script>

<!--     Demo Js -->
    <script src="/SMGMT/Config/js/demo.js"></script>

</body>

</html>