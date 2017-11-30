<!DOCTYPE html>
<%@page import="com.servletStore.settings.school.model.SchoolPOJO"%>
<%@page import="com.servletStore.settings.standard.model.StandardPOJO"%>
<%@page import="com.servletStore.settings.standard.model.StandardImpl"%>
<%@page import="com.servletStore.settings.standard.model.StandardDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.servletStore.settings.section.model.SectionImpl"%>
<%@page import="com.servletStore.settings.section.model.SectionPojo"%>
<%@page import="com.servletStore.settings.section.model.SectionDAO"%>
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
                            <h2>Standard Details</h2>
                        </div>
                        <div class="body">
                            <form id="form_validation" action="/SMGMT/AddStandard" method="POST">
	                            
								<div class="row clearfix">
								
									<div class="col-md-6 col-lg-6">
										<div class="form-group form-float">
											<div class="form-line">
			                                    <select class="form-control show-tick" name="schoolId" id="schoolId" title="Select School" data-live-search="true" required="required">
			                                        
			                                        <%
				                                    	StandardDAO sdao3 = new StandardImpl();
				                                    	List<SchoolPOJO> l3 = sdao3.getSchoolDetails();
				                                   
														int count3=1;
				                                    	Iterator itr3 = l3.iterator();
				                                    	while(itr3.hasNext()){
				                                    		SchoolPOJO stdPojo3 = (SchoolPOJO)itr3.next();
				                                    		int id3 = stdPojo3.getSchool_id();
				                                    %>
				                                    	<option value="<%=id3 %>"><%=stdPojo3.getName() %></option>
														
				                                     <%
				                                     	count3++;
				                                    	}
				                                     %>  
			                                        
			                                        
			                                    </select>
			                                 </div>
			                              </div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
			                                    <select class="form-control show-tick" name="sectionId" onchange="getSections()" title="Select Section" data-live-search="true" required="required">
			                                        
			                                        <%
				                                    	SectionDAO sdao2 = new SectionImpl();
				                                    	List<SectionPojo> l2 = sdao2.getSectionDetails();
				                                   
														int count2=1;
				                                    	Iterator itr2 = l2.iterator();
				                                    	while(itr2.hasNext()){
				                                    		SectionPojo pojo2 = (SectionPojo)itr2.next();
				                                    		int id2 = pojo2.getId();
				                                    %>
				                                            <option value="<%=id2 %>"> <%=pojo2.getName() %> </option>
				                                     <%
				                                     	count2++;
				                                    	}
				                                     %>  
			                                    </select>
											</div>
										</div>
									</div>
								
									<%
                                    	StandardDAO sdao1 = new StandardImpl();
                                    	List<StandardPOJO> l1 = sdao1.getStandardDetails();
                                   
										int count1=1;
                                    	Iterator itr1 = l1.iterator();
                                    	while(itr1.hasNext()){
                                    		StandardPOJO stdPojo1 = (StandardPOJO)itr1.next();
                                    		int id = stdPojo1.getId();
                                    %>
                                    
	                                    <div class="col-md-3">
											<div class="form-group form-float">
												<div class="demo-checkbox">
			                                		<input type="checkbox" id="basic_checkbox_<%=count1 %>" checked />
			                                		<label for="basic_checkbox_<%=count1 %>"><%=stdPojo1.getName() %></label>
												</div>
											</div>
										</div>
										
                                     <%
                                     	count1++;
                                    	}
                                     %>  
								</div>
                                
                                <button class="btn btn-primary waves-effect" type="submit">Add Standard</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Basic Validation -->
        
        
        	<!-- Exportable Table -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Standard List
                            </h2>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover dataTable js-exportable" border="2">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Standard Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <%
                                    	StandardDAO sdao = new StandardImpl();
                                    	List<StandardPOJO> l = sdao.getStandardDetails();
                                   
										int count=1;
                                    	Iterator itr = l.iterator();
                                    	while(itr.hasNext()){
                                    		StandardPOJO stdPojo = (StandardPOJO)itr.next();
                                    		int id = stdPojo.getId();
                                    %>
                                        <tr>
                                            <td><%=count %></td>
                                            <td><%=stdPojo.getName() %></td>
                                            <td><a href="#updateSection" data-toggle="modal"  onclick="searchName(<%=id%>)"><i class="material-icons">create</i></a> 
                                            	 <i class="material-icons">clear</i></td>
                                        </tr>
                                     <%
                                     	count++;
                                    	}
                                     %>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Exportable Table -->
        
        

        
        
        </div>
    </section>

<script type="text/javascript">

function getSections() {
	
	var sid = document.getElementById("schoolId").value;	
	alert(sid);
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var demoStr = this.responseText.split(",");
			
		}
	};
	
	xhttp.open("POST", "/SAMERP/AddStandard?schoolId="+sid, true);
	xhttp.send();
	
}	


</script>

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