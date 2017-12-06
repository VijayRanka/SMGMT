
<!DOCTYPE html>
<%@page import="utility.SysDate"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.servletStore.settings.school.model.SchoolPOJO"%>
<%@page import="java.util.List"%>
<%@page import="com.servletStore.settings.school.model.SchoolImpl"%>
<%@page import="com.servletStore.settings.school.model.SchoolDAO"%>
<html>

<head>
<!-- =======================	CSS Include ======================= -->
    <jsp:include page="/Common/cssJs.jsp"></jsp:include>
<!-- =======================	End CSS Include ======================= -->
</head>

<body class="theme-red" onload="setFocusToTextBox()">
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
                            <h2> School Details</h2>
                        </div>
                        <div class="body">
                            <form action="/SMGMT/School" id="form_validation" method="Post">
	                           
								<div class="row clearfix">			
								
								  <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12"  style="float: right;">                                   
                                    <img id="blah" src="/SMGMT/View/Settings/school/images/thumb-1.jpg" alt="your image" style="margin-left: -108px;margin-top: -17px;height: 236px;width: 341px;"/>
                                       <input type='file' onchange="readURL(this);"  style="margin-top: 7px;margin-left: -108px;"/><span style="color: red;margin-left: 85px;">*image:235x240</span>
                                </div>						
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="school_name" id="SchoolName" pattern="[a-z A-Z ,]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">School Name</label>
											</div>
										</div>
									</div>								
									
									
								 <div class="col-md-8"> 
									  
								 	<select class="form-control show-tick" name="sectionList" multiple="multiple" title="Select Section" data-live-search="true">
									 <%
									    SchoolDAO schooldao=new SchoolImpl();
									 	List<SchoolPOJO> list=schooldao.getSchoolInfo();
									 	Iterator itr=list.iterator();
									 	while(itr.hasNext())
									 	{									 		
								 			
								 			SchoolPOJO pobj = (SchoolPOJO)itr.next();	
								 			int id=((SchoolPOJO)pobj).getSection_id();
								 			String sectionList=((SchoolPOJO)pobj).getSectionName();
										 %>                
                                                                		                              			             		
                                        <option value="<%=id%>"><%=sectionList%></option>   
										<%} %>                                
                                        </select>                               

                             	   </div>
																	
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line">
												<textarea type="text" class="form-control" name="school_address"  pattern="[a-z A-Z ,]*" onkeyup="this.value=this.value.toUpperCase()" required></textarea>
												<label class="form-label">School Address</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="slogan"  pattern="[a-z A-Z ,]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Slogan</label>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="index_no" pattern="[a-z A-Z 0-9]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Index No</label>
											</div>
										</div>
									</div>
									
																
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="licence_no"  pattern="[a- z A-Z 0-9]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Licence No</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="udise"  pattern="[a- z A-Z 0-9]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">UDISEi</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="school_code" pattern="[a- z A-Z 0-9]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">School Code</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="email" class="form-control" name="email_id" required>
												<label class="form-label">Email Id</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="phone_no" pattern="[0-9]*" maxlength="10" required>
												<label class="form-label">Phone No</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="board" pattern="[a- z A-Z]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Board</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="punit_code" pattern="[a- z A-Z 0-9]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">PUnit Code</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
										
										
											<div class="form-line">
												<input type="text" class="form-control" name="center"  pattern="[a- z A-Z ]*" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Center</label>
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
											<div class="form-line">
												<input type="text" class="form-control" name="jubilee_year"  pattern="[0-9]*" maxlength="4" onkeyup="this.value=this.value.toUpperCase()" 
												required>
												<label class="form-label">Jubilee Year</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="establish_year" pattern="[0-9]*" maxlength="4" required>
												<label class="form-label">Establish Year</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="medium" required>
												<label class="form-label">Medium</label>
											</div>
										</div>
									</div>
									
									
								</div>							
									 <button type="submit" name="SchoolSubmitBtn" class="btn btn-success waves-effect" style="margin-left: 400px;" >SUBMIT</button>
                                 	 <fbutton type="button" class="btn btn-danger waves-effect" style="margin-left: 10px;">EXIT</button>
                            </form>
                        </div>                 
                    </div>
                </div>
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                School Details
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
                                        	<th>Id</th>
                                            <th>Name</th>
                                            <th>Section</th>
                                            <th>Address</th>
                                            <th>Slogan</th>
                                            <th>Index No</th>
                                            <th>Licence No</th>
                                            <th>Udise</th>
                                            <th>School Code</th>
                                            <th>Email Id</th>
                                            <th>Phone No</th>
                                            <th>Board</th>
                                            <th>Punit Code</th>
                                            <th>Center</th>
                                            <th>Date</th>
                                            <th>Jubilee Year</th>
                                            <th>Establish Year</th>
                                            <th>Medium</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                   <%
                                   int id=0,count=1;                                  	 
								   	List<SchoolPOJO> li=schooldao.getSchoolDetails();	
						
								 	Iterator itr1=li.iterator();
								 	
                                   %>
                                    <tbody>
                                        <%
                                        while(itr1.hasNext())
                                        {
                                        	
                                        	SchoolPOJO Pojo=(SchoolPOJO)itr1.next();
                                        	int id1=((SchoolPOJO)Pojo).getId();  
                                        	String sectionList=schooldao.selectSection(id1);
                                        
                                        %>
                                      <tr class="gradeX">
										<td id="<%=id1%>"><%=count%></td>
										<td><%=((SchoolPOJO)Pojo).getName()%></td>
										<td><%=sectionList%></td>
										<td><%=((SchoolPOJO)Pojo).getAddress()%></td>
										<td><%=((SchoolPOJO)Pojo).getSlogan()%></td>
										<td><%=((SchoolPOJO)Pojo).getIndexno()%></td>
										<td><%=((SchoolPOJO)Pojo).getLicenceno()%></td>
										<td><%=((SchoolPOJO)Pojo).getUdise()%></td>
										<td><%=((SchoolPOJO)Pojo).getShoolcode()%></td>
										<td><%=((SchoolPOJO)Pojo).getEmailid()%></td>
										<td><%=((SchoolPOJO)Pojo).getPhoneno()%></td>
										<td><%=((SchoolPOJO)Pojo).getBoard()%></td>
										<td><%=((SchoolPOJO)Pojo).getPunitcode()%></td>
										<td><%=((SchoolPOJO)Pojo).getCenter()%></td>
										<td><%=((SchoolPOJO)Pojo).getDate()%></td>
										<td><%=((SchoolPOJO)Pojo).getJubileeYear()%></td>
										<td><%=((SchoolPOJO)Pojo).getEstablishYear()%></td>
										<td><%=((SchoolPOJO)Pojo).getMedium()%></td>
										<td><a href="#update" data-toggle="modal" onclick="searchSchool(<%=id1%>)"><i class="material-icons">create</i></a>
										<a href="/SMGMT/School?deleteId=<%=id1%>"><i class="material-icons">clear</i></a></td>
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
          </div>
    </section>
    
     <div class="modal fade" id="update" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: lightgrey;">
                            <h4 class="modal-title" id="largeModalLabel">Update School Details</h4>
                        </div>
                        <div class="modal-body">
                            <form action="/SMGMT/School" id="form_validation" method="Post">
	                           
								<div class="row clearfix">


							<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12"  style="float: right;">                                   
                                    <img id="blah" src="/SMGMT/View/Settings/school/images/thumb-1.jpg" alt="your image" style="margin-left: -97px;margin-top: -17px;height: 241px; width: 310px;"/>
                                       <input type='file' onchange="readURL(this);"  style="margin-top: 7px;margin-left: -98px;"/><span style="color: red;margin-left: 85px;">*image:235x240</span>
                                </div>	

							<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line ">
											<input type="hidden" name="updateId" id="Updateid">	
												<input type="text" class="form-control " name="school_name" id="schoolId" onkeyup="this.value=this.value.toUpperCase()" autofocus required>
												<label class="form-label 'active'">School Name</label>
											</div>
										</div>
									</div>								
									
								
																	
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line focused">
												<textarea type="text" class="form-control" name="school_address" id="school_addressid" onkeyup="this.value=this.value.toUpperCase()" style="margin-top: 20px;" required></textarea>
												<label class="form-label">School Address</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="slogan"  id="sloganid" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Slogan</label>
											</div>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="index_no"  id="index_noid" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Index No</label>
											</div>
										</div>
									</div>
									
																
									<div class="col-md-12">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="licence_no"  id="licence_noid" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Licence No</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="udise"  id="udise_id" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">UDISEi</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="school_code" id="school_codeid" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">School Code</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="email" class="form-control" name="email_id" id="emailid_id" required>
												<label class="form-label">Email Id</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="phone_no" id="phone_noid" required>
												<label class="form-label">Phone No</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="board"  id="board_id" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Board</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="punit_code" id="punit_codeid" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">PUnit Code</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
										
										
											<div class="form-line focused">
												<input type="text" class="form-control" name="center"  id="center_id" onkeyup="this.value=this.value.toUpperCase()" required>
												<label class="form-label">Center</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
										<%
										SysDate reqdate=new SysDate();
										%>
											<div class="form-line focused">
												<input type="text" class="datepicker form-control" value="<%=reqdate.todayDate() %>" name="date_time" id="date_id" placeholder="Please choose a date..." required="required">
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="jubilee_year" id="jubilee_id" onkeyup="this.value=this.value.toUpperCase()" 
												required>
												<label class="form-label">Jubilee Year</label>
											</div>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="establish_year" id="establish_id" required>
												<label class="form-label">Establish Year</label>
											</div>
										</div>
									</div>
																
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line focused">
												<input type="text" class="form-control" name="medium" id="medium_id" required>
												<label class="form-label">Medium</label>
											</div>
										</div>
									</div>								
								</div>                     
			                        <div class="modal-footer" style="background-color: lightgrey;margin-left: -25px;margin-right: -25px;margin-bottom: -15px;">
			                            <button type="submit" name="updateSubmitBtn" class="btn btn-link waves-effect" style="background-color: green;color: white;">Update</button>
			                            <button type="button" class="btn btn-link waves-effect" data-dismiss="modal" style="background-color: red;color: white;">Close</button>
			                        </div>                       		           
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    


	<script type="text/javascript">

	function searchSchool(id) {
		
		alert(id);
		var xhttp;
		xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				
				var demoStr = this.responseText.split(",");
				
				document.getElementById("Updateid").value = demoStr[0];				 
				document.getElementById("schoolId").value = demoStr[1];	
				document.getElementById("school_addressid").value = demoStr[2];
				alert(demoStr[2]);
				document.getElementById("sloganid").value = demoStr[3];
				document.getElementById("index_noid").value = demoStr[4];
				document.getElementById("licence_noid").value = demoStr[5];
				document.getElementById("udise_id").value = demoStr[6];
				document.getElementById("school_codeid").value = demoStr[7];
				document.getElementById("emailid_id").value = demoStr[8];
				document.getElementById("phone_noid").value = demoStr[9];
				document.getElementById("board_id").value = demoStr[10];
				document.getElementById("punit_codeid").value = demoStr[11];
				document.getElementById("center_id").value = demoStr[12];
				document.getElementById("date_id").value = demoStr[13];
				document.getElementById("jubilee_id").value = demoStr[14];
				document.getElementById("establish_id").value = demoStr[15];
				document.getElementById("medium_id").value = demoStr[16];
				
				
				
			
			     
				}
			};
		xhttp.open("POST","/SMGMT/School?schoolid="+id, true);
		xhttp.send();
	}

	
	
	function myFunction() {
	    var x = document.getElementById("snackbar")
	    x.className = "show";
	    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
	}
	
	
	function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
	
	

	function setFocusToTextBox() {
		
		document.getElementById("SchoolName").focus();
		myFunction();
	}


	</script>
    <!-- Jquery Core Js -->
    <script src="/SMGMT/Config/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="/SMGMT/Config/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
    
    <!-- Bootstrap Colorpicker Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>

    <!-- Dropzone Plugin Js -->
    <script src="/SMGMT/Config/plugins/dropzone/dropzone.js"></script>

    <!-- Input Mask Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script>

    <!-- Multi Select Plugin Js -->
    <script src="/SMGMT/Config/plugins/multi-select/js/jquery.multi-select.js"></script>

    <!-- Jquery Spinner Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-spinner/js/jquery.spinner.js"></script>

    <!-- Bootstrap Tags Input Plugin Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>

    <!-- noUISlider Plugin Js -->
    <script src="/SMGMT/Config/plugins/nouislider/nouislider.js"></script>

    <!-- Jquery Validation Plugin Css -->
    <script src="/SMGMT/Config/plugins/jquery-validation/jquery.validate.js"></script>

    <!-- JQuery Steps Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-steps/jquery.steps.js"></script>

    <!-- Sweet Alert Plugin Js -->
    <script src="/SMGMT/Config/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- Waves Effect Plugin Js -->
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

    <!-- Demo Js -->
    <script src="/SMGMT/Config/js/demo.js"></script>
    
  </body>

</html>