<!DOCTYPE html>
<html>

<head>
<!-- =======================	CSS Include ======================= -->
    <jsp:include page="/Common/cssJs.jsp"></jsp:include>
<!-- =======================	End CSS Include ======================= -->
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);">School<b>MANAGEMENT</b></a>
            <small>Designed by-Vertical Software</small>
        </div>
        <div class="card">
            <div class="body">
                <form id="sign_in" method="POST" action="/SMGMT/UserLogin">
                    <div class="msg">Sign in to start your PROJECT</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="username" id="username" onkeypress="userPassValid(this.value,1)" placeholder="Username" autocomplete="off" autofocus>
                        </div>
                         <span id="forUser"></span>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" name="password" id="password" onkeypress="userPassValid(this.value,2)" placeholder="Password" autocomplete="off">
                        </div>
                         <span id="forPass"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8 p-t-5">
                            <input type="hidden" tabindex="-1">
                            <label for="rememberme" tabindex="-1"></label>
                        </div>
                        <div class="col-xs-4">
                            <button class="btn btn-block bg-pink waves-effect" name="login" type="button" onclick="getUserStatus()" id="login">SIGN IN</button>
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6">
                            <a href="#">Register Now!</a>
                        </div>
                        <div class="col-xs-6 align-right">
                            <a href="#">Forgot Password?</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="../../plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="../../plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="../../plugins/node-waves/waves.js"></script>

    <!-- Validation Plugin Js -->
    <script src="../../plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="../../js/admin.js"></script>
    <script src="../../js/pages/examples/sign-in.js"></script>
</body>
<script>
//function for checking username password
function getUserStatus(){
	  var uname=document.getElementById("username").value;
	  var pass=document.getElementById("password").value;
	  if(uname=="" || pass==""){
		  if(uname==""){
			  document.getElementById("forUser").style.color="red";
			  document.getElementById("forUser").innerHTML="Please Fill This First";
			  document.getElementById("username").focus();
		  }
		  else{
			  document.getElementById("forPass").style.color="red";
			  document.getElementById("forPass").innerHTML="Please Fill This First";
			  document.getElementById("password").focus();
		  }
	  }
	  else{
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		     var status = this.responseText;
		     if(status=="0"){
		    	 alert("insert Data First")
		     }
		     else if(status=="1"){
		    	 document.getElementById("login").type="submit";
		    	 document.getElementById("login").click();
		     }
		     else if(status=="2"){
		    	 alert("wrongUser");
		     }
		    }
		  };
		  xhttp.open("POST", "/SMGMT/UserLogin?getStatus=1&username="+uname+"&password="+pass, true);
		  xhttp.send();
	  }
}
//function for validation
function userPassValid(value,id){
	if(id==1){
		if(value.trim()==""){
			document.getElementById("forUser").style.color="red";
			document.getElementById("forUser").innerHTML="Please Fill This First";
		}
		else{
			document.getElementById("forUser").style.color="red";
			  document.getElementById("forUser").innerHTML="";
		}
	}
	else{
		if(value.trim()==""){
			document.getElementById("forPass").style.color="red";
			document.getElementById("forPass").innerHTML="Please Fill This First";
		}
		else{
			document.getElementById("forPass").style.color="red";
			  document.getElementById("forPass").innerHTML="";
		}
	}
	
}
</script>


</html>