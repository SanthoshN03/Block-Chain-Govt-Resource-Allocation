<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type='text/javascript' src='js/jquery-3.6.0.min.js'></script>
<style>
body{
background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("image/business-folders-papers-stacks-desk-against-wall-34582848.jpg");
background-repeat:no-repeat;
background-size:cover;
}
span{
color:;
font-family:
}
h1{
font-veriant:small-caps;
}
h4{
color:#2E5894;}
.container{
background-color:#BFAFB2;
opacity:1;
width:600px;
}
input{
border-radius:20px;
}
</style>
</head>

<body>
<div class="container">
<center>
<form action="contactordetails" method="post" enctype="multipart/form-data">

<h1><span>R</span>EGISTER <span>H</span>ERE</h1>

<h4>Company Name</h4>
<input type="text" placeholder="Enter Company Name" name="cname" required style="width:300px;height:40px;border-radius: 10px;text-align:center; background-image: ;">
<h4>Company Mail</h4>
<input type="email" placeholder="Enter Company Email" name="cmail" required style="width:300px;height:40px;border-radius: 10px;text-align:center;  background-image:">
<h4>Company number</h4>
<input type="number" id="fieldSelectorId"   placeholder="Enter Company NUMBER" name="cnumber"  pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}""  required style="width:300px;height:40px;border-radius: 10px;text-align:center;   background-image: ;">
<h4>password</h4>
<input type="password" placeholder="  PASSWORD" id="password1" name="pass" required style="width:300px;height:40px;border-radius: 10px;text-align:center;  background-image: ;">
<h4>Conpassword</h4>
<input type="password" placeholder="CONFIRM PASSWORD"  id="password2" name="cpass" required style="width:300px;height:40px;border-radius: 10px;text-align:center;  background-image:;"><br>

     <h4>Company Address</h4>
 <textarea type="text" placeholder="Address Here"   name="address" required style="width:300px;height:60px;border-radius: 10px;text-align:center;"></textarea><br>
 
 <h4>Upload Kyc documentation</h4>
 <input type="file" placeholder="COUNTRY" name="filename" style="width:300px;height:40px;border-radius: 10px;text-align:center;  background-image: ;"><br><br>

<input type="Submit" value="register" style="width:150px;height:40px;border-radius: 40px;text-align:center;   background-color:White;">

</form>
</center>
</div>
</body>
<script>
jQuery(document).ready(function () {
    jQuery("#fieldSelectorId").keypress(function (e) {
       var length = jQuery(this).val().length;
     if(length > 9) {
          return false;
     } else if(e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
          return false;
     } else if((length == 0) && (e.which == 48)) {
          return false;
     }
    });
  });</script>
                          <script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Password Doesn't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>
</html>