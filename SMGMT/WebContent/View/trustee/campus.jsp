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
            <div class="block-header">
                <h2>
                    FORM WIZARD
                    <small>Taken from <a href="https://github.com/rstaib/jquery-steps" target="_blank">github.com/rstaib/jquery-steps</a> & <a href="https://jqueryvalidation.org/" target="_blank">jqueryvalidation.org</a></small>
                </h2>
            </div>

            <!-- Advanced Form Example With Validation -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>ADVANCED FORM EXAMPLE WITH VALIDATION</h2>
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
                            <form id="wizard_with_validation" action="/SMGMT/Campus" method="POST">
                                <h3>Trustee Env.</h3>
                                <fieldset>
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input type="text" class="form-control" name="eduName" required>
                                            <label class="form-label">Education Society Name*</label>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input type="text" class="form-control" name="tUName" id="tUName" required>
                                            <label class="form-label">Trustee User Name*</label>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input type="password" class="form-control" name="tPass" id="tPass" required>
                                            <label class="form-label">Trustee Password*</label>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group form-float">
                                        <div class="form-line">
                                            <input type="number" class="form-control" name="nSchools" id="nSchools" onblur="addFields(this.value)" required>
                                            <label class="form-label">No of Schools*</label>
                                        </div>
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>School Name</label></div>
                                    		<div class="col-sm-3"><label>Allow Permission</label></div>
                                    		<div class="col-sm-3"><label>Principal User Name</label></div>
                                    		<div class="col-sm-3"><label>Principal Password</label></div>
                                    	</div>
                                    </div>
                                   
                                    <div class="row clearfix" id="container">
                                    
                                    </div>
                                    
                                    
                                    
                                      
                                </fieldset>

                                <h3>Principal Env.</h3>
                                <fieldset>
                                
                                <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Functionality Name</label></div>
                                    		<div class="col-sm-3"><label>Give Access</label></div>
                                    		<div class="col-sm-6"><label>Permissions</label></div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_1" onclick="permission(this,radio_11,radio_12)" />
                                				<label for="basic_checkbox_1">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group5" type="radio" id="radio_11" value="pRead" class="with-gap " disabled/>
                                				<label for="radio_35">READ</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group5" type="radio" id="radio_12" value="pWrite" class="with-gap " disabled/>
                                				<label for="radio_36">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_2" onclick="permission(this,radio_13,radio_14)" />
                                				<label for="basic_checkbox_2">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group6" type="radio" id="radio_13" value="pRead" class="with-gap " disabled/>
                                				<label for="radio_37">READ</label>
                                    		</div>
                                    		<div class="col-sm-3">
                                    			<input name="group6" type="radio" id="radio_14" value="pWrite" class="with-gap " disabled/>
                                				<label for="radio_38">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    
                                    </div>
                                    
                                    
                                </fieldset>

                                <h3>Clerk Env.</h3>
                                <fieldset>
                                   <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Functionality Name</label></div>
                                    		<div class="col-sm-3"><label>Give Access</label></div>
                                    		<div class="col-sm-6"><label>Permissions</label></div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_11" onclick="permission(this,radio_21,radio_22)" />
                                				<label for="basic_checkbox_11">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group7" type="radio" id="radio_21" value="cRead" class="with-gap " disabled/>
                                				<label for="radio_21">READ</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group7" type="radio" id="radio_22" value="cWrite" class="with-gap " disabled/>
                                				<label for="radio_22">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_12" onclick="permission(this,radio_23,radio_24)" />
                                				<label for="basic_checkbox_12">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group8" type="radio" id="radio_23" value="cRead" class="with-gap " disabled/>
                                				<label for="radio_23">READ</label>
                                    		</div>
                                    		<div class="col-sm-3">
                                    			<input name="group8" type="radio" id="radio_24" value="cWrite" class="with-gap " disabled/>
                                				<label for="radio_24">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    
                                    </div>

                                </fieldset>
                                
                                <h3>Teacher Env.</h3>
                                <fieldset>
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Functionality Name</label></div>
                                    		<div class="col-sm-3"><label>Give Access</label></div>
                                    		<div class="col-sm-6"><label>Permissions</label></div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_21" onclick="permission(this,radio_31,radio_32)" />
                                				<label for="basic_checkbox_21">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group9" type="radio" id="radio_31" value="tRead" class="with-gap " disabled/>
                                				<label for="radio_31">READ</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group9" type="radio" id="radio_32" value="tWrite" class="with-gap " disabled/>
                                				<label for="radio_32">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_22" onclick="permission(this,radio_33,radio_34)" />
                                				<label for="basic_checkbox_22">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group10" type="radio" id="radio_33" value="tRead" class="with-gap " disabled/>
                                				<label for="radio_33">READ</label>
                                    		</div>
                                    		<div class="col-sm-3">
                                    			<input name="group10" type="radio" id="radio_34" value="tWrite" class="with-gap " disabled/>
                                				<label for="radio_34">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    
                                    </div>
                                </fieldset>
                                
                                <h3>Librarian Env.</h3>
                                <fieldset>
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Functionality Name</label></div>
                                    		<div class="col-sm-3"><label>Give Access</label></div>
                                    		<div class="col-sm-6"><label>Permissions</label></div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_31" onclick="permission(this,radio_41,radio_42)" />
                                				<label for="basic_checkbox_31">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group9" type="radio" id="radio_41" value="tRead" class="with-gap " disabled/>
                                				<label for="radio_41">READ</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group9" type="radio" id="radio_42" value="tWrite" class="with-gap " disabled/>
                                				<label for="radio_42">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    
                                    </div>
                                    
                                    <div class="row clearfix">
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-3"><label>Management</label></div>
                                    		<div class="col-sm-3">
                                    			<input type="checkbox" id="basic_checkbox_32" onclick="permission(this,radio_43,radio_44)" />
                                				<label for="basic_checkbox_32">Grant</label>
                                			</div>
                                    		<div class="col-sm-3">
                                    			<input name="group10" type="radio" id="radio_43" value="tRead" class="with-gap " disabled/>
                                				<label for="radio_43">READ</label>
                                    		</div>
                                    		<div class="col-sm-3">
                                    			<input name="group10" type="radio" id="radio_44" value="tWrite" class="with-gap " disabled/>
                                				<label for="radio_44">READ/WRITE</label>
                                    		</div>
                                    	</div>
                                    </div>
                                </fieldset>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Advanced Form Example With Validation -->
        </div>
    </section>


    
    
    
    
    <script type="text/javascript">
    
    function addFields(val)
    {
    	// Container <div> where dynamic content will be placed
        var container = document.getElementById("container");
        // Clear previous contents of the container
        while (container.hasChildNodes()) {
            container.removeChild(container.lastChild);
        }
        var count=1;
        for (var i=0;i<val;i++)
        {
        	//creating div of 12 grids 
        	var div = document.createElement("div");
        	div.className="col-sm-12";
        	div.id="contain"+count;
        	container.appendChild(div);
        	
        	//school name input texts
        	var input = document.createElement("input");
            input.type = "text";
            input.name = "sName" + i;
            input.placeholder="School Name "+count;
            input.required = true;
            document.getElementById("contain"+count).appendChild(input);
            
            //checkbox for generation username password input text
            var check = document.createElement("input");
            check.type="checkbox";
            check.id="md_checkbox_"+i;
            //check.className="chk-col-blue";
            check.setAttribute("onclick", "upass("+count+",this)");
            document.getElementById("contain"+count).appendChild(check);
            
            //label for checkboxes
            var checkLabel = document.createElement("label");
            checkLabel.htmlFor='md_checkbox_'+i;
            checkLabel.setAttribute("style", "margin-left: 55px;");
            checkLabel.innerHTML='School Name '+count;
            document.getElementById("contain"+count).appendChild(checkLabel);
        	
            count++;
        }
    }
    
    function upass(val,id)
    {
    	//creating or removing username and password input text as per checkbox checked value
    	if($(id).is(":checked"))
    	{
    		var i=val-1;
        	var input = document.createElement("input");
            input.type = "text";
            input.name = "pUName" + i;
            input.setAttribute("style", "margin-left: 80px;");
            input.placeholder="User Name "+val;
            input.required = true;
            document.getElementById("contain"+val).appendChild(input);
            
            var pass = document.createElement("input");
            pass.type = "password";
            pass.name = "pUPass" + i;
            pass.setAttribute("style", "margin-left: 60px;");
            pass.placeholder="Password "+val;
            document.getElementById("contain"+val).appendChild(pass);
    	}
    	else
    	{
    		var rem=document.getElementById("contain"+val);
    		var count=1;
    		while (rem.hasChildNodes()) {
                rem.removeChild(rem.lastChild);
                if(count==2)
                {
                	break;	
                }
                count++;
            }
    	}
    	
	 }
    
    function permission(id,radioReadId,radioWriteId)
    {
    	//enabling permissions radio buttons
    	if($(id).is(":checked"))
    	{
    		radioReadId.disabled = false;
    		radioWriteId.disabled = false;
    	}
    	else
    	{
    		radioReadId.disabled = true;
    		radioWriteId.disabled = true;
    	}
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

    <!-- Jquery Validation Plugin Css -->
    <script src="/SMGMT/Config/plugins/jquery-validation/jquery.validate.js"></script>

    <!-- JQuery Steps Plugin Js -->
    <script src="/SMGMT/Config/plugins/jquery-steps/jquery.steps.js"></script>

    <!-- Sweet Alert Plugin Js -->
    <script src="/SMGMT/Config/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="/SMGMT/Config/plugins/node-waves/waves.js"></script>

	<!-- Autosize Plugin Js -->
    <script src="/SMGMT/Config/plugins/autosize/autosize.js"></script>

    <!-- Moment Plugin Js -->
    <script src="/SMGMT/Config/plugins/momentjs/moment.js"></script>
	
	<!-- Bootstrap Material Datetime Picker Plugin Js -->
    <script src="/SMGMT/Config/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
	
	
    <!-- Custom Js -->
    <script src="/SMGMT/Config/js/admin.js"></script>
    <script src="/SMGMT/Config/js/pages/forms/form-wizard.js"></script>
	<script src="/SMGMT/Config/js/pages/forms/basic-form-elements.js"></script>
	
    <!-- Demo Js -->
    <script src="/SMGMT/Config/js/demo.js"></script>
    
</body>

</html>