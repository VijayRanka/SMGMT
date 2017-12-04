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
			              <li><a href="javascript:void(0);"><i class="material-icons">library_books</i> Transport</a></li>
			              <li class="active"><i class="material-icons">archive</i> Bus Info</li>
			            </ol>
                        <div class="header">
                            <h2>Bus Info</h2>
                        </div>
                        <div class="body">
                            <form id="form_validation" method="POST">
									
									
									<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="stopName" required>
												<label class="form-label">Bus Stop Name</label>
											</div>
										</div>
										<div class="form-group form-float">
                                    		<div class="form-line">
                                        		<input type="text" class="form-control" name="busNo" required>
                                        		<label class="form-label">Bus No.</label>
                                    		</div>
                                		</div>	
											
								
								 <div class="row clearfix">
                                	<div class="col-md-6">
                                		<div class="form-group form-float">
                                    	<select class="form-control show-tick" data-show-subtext="true">
	                                        <option selected>Select Driver</option>
	                                        <option data-subtext="7898787785">Baby</option>
	                                    </select>
                                		</div>
                                	</div>
                                	<div class="col-md-6">
                                	<a data-toggle="modal" data-target="#addEmloyee" data-toggle="tooltip" data-placement="bottom" title="Add New Driver">
                                	<i class="material-icons" >add</i>
                                	</a></div>
                                </div>
                               
                               
                               <div class="row clearfix">
                                	<div class="col-md-6">
                                		<div class="form-group form-float">
                                    	<select class="form-control show-tick" data-show-subtext="true">
	                                        <option selected>Select Conductor</option>
	                                        <option data-subtext="7898787785">Baby</option>
	                                    </select>
                                		</div>
                                	</div>
                                	<div class="col-md-6">
                                	<a data-toggle="modal" data-target="#addEmloyee" data-toggle="tooltip" data-placement="bottom" title="Add New Driver">
                                	<i class="material-icons" >add</i>
                                	</a></div>
                                </div>
                                <div class="form-group form-float">
                                    <div class="form-line">
                                        <input type="text" class="form-control" name="fee" required>
                                        <label class="form-label">Per Month Fee</label>
                                    </div>
                                </div>
                               
                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Basic Validation -->
            
            
            <!-- dataTable Start -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Bus Info
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
                                <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                            <td>$320,800</td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011/07/25</td>
                                            <td>$170,750</td>
                                        </tr>
                                        <tr>
                                            <td>Ashton Cox</td>
                                            <td>Junior Technical Author</td>
                                            <td>San Francisco</td>
                                            <td>66</td>
                                            <td>2009/01/12</td>
                                            <td>$86,000</td>
                                        </tr>
                                        <tr>
                                            <td>Cedric Kelly</td>
                                            <td>Senior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2012/03/29</td>
                                            <td>$433,060</td>
                                        </tr>
                                        <tr>
                                            <td>Airi Satou</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>33</td>
                                            <td>2008/11/28</td>
                                            <td>$162,700</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
            
            <!-- dataTable End -->
            
	</div>
    </section>
    
    <!-- Add Employee Modal Start -->
    	<div class="modal fade" id="addEmloyee" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Add New Employee</h4>
                        </div>
                        <div class="modal-body">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales orci ante, sed ornare eros vestibulum ut. Ut accumsan
                            vitae eros sit amet tristique. Nullam scelerisque nunc enim, non dignissim nibh faucibus ullamcorper.
                            Fusce pulvinar libero vel ligula iaculis ullamcorper. Integer dapibus, mi ac tempor varius, purus
                            nibh mattis erat, vitae porta nunc nisi non tellus. Vivamus mollis ante non massa egestas fringilla.
                            Vestibulum egestas consectetur nunc at ultricies. Morbi quis consectetur nunc.
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-link waves-effect">SAVE CHANGES</button>
                            <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                        </div>
                    </div>
                </div>
      </div>
    <!-- Add Employee Modal End -->

    
    
    
    <!-- Jquery Core Js -->
    <script src="/SMGMT/Config/plugins/jquery/jquery.min.js"></script>
    
    
    <!-- Bootstrap Core Js -->
    <script src="/SMGMT/Config/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Jquery Validation Plugin Css -->
    <script src="/SMGMT/Config/plugins/jquery-validation/jquery.validate.js"></script>

    <!-- JQuery Steps Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-steps/jquery.steps.js"></script>

    <!-- Sweet Alert Plugin Js -->
    <script src="/SMGMT/Config/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="/SMGMT/Config/plugins/node-waves/waves.js"></script>
    
    
    
    <!-- Jquery DataTable Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="/SMGMT/Config/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
    

    <!-- Custom Js -->
    <script src="/SMGMT/Config/js/admin.js"></script>
    <script src="/SMGMT/Config/js/pages/forms/form-validation.js"></script>
    <script src="/SMGMT/Config/js/pages/tables/jquery-datatable.js"></script>
    <script src="/SMGMT/Config/js/pages/ui/tooltips-popovers.js"></script>

    <!-- Demo Js -->
    <script src="/SMGMT/Config/js/demo.js"></script>
    
    
    
    
</body>

</html>