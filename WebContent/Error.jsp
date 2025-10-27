<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>

$(window).load(function(){

    setTimeout(function(){
       window.location = homepage.jsp
    }, 2000);

});



</script>
</head>
<body onload="myFunction()">

<center>
<br><br><br>
<h2>Please Enter Valid Input</h2>
<h2>Click Here To
<a href="homepage.jsp">GotoHomePage</a>
</h2>
</center>

<script>
function myFunction() {
  setTimeout(function(){ alert("Your action strictly prohibited"); }, 1000);
}
/* setTimeout(function(){history.back();}, 3000); */
</script>


</body>
</html>