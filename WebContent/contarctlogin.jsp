<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="contactorfirst.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-image:url("image/gm14.jpg");
   background-repeat:no-repeat;
    background-size:110%;
}
.myDiv {
    border: 5px outset #989084;
    background-color: #46556fe6;    
  border-radius: 10px;
  width:400px;
  height:250px;
  margin: auto;
  padding-top:30px;
  /* box-shadow: 25px 20px 20px #888888; */
  
}
.myDiv2 {
margin-top:;
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:#331100; 
}
a{
text-decoration:none;
color:white;}
span{
color:;
  
}
.myDiv2{
color:white;
font-variant: small-caps;
}
</style>


</head>
<body>


<center>

<div style="margin-top:;" class="myDiv2">
 <span>L</span>ogin <span>P</span>age
</div>
</center>
<br>
<!-- <span style="color:red;margin-left:550px;">L</span>OGIN <span>P</span>AGE -->
<%if(session.getAttribute("srno").toString().equals("2")){ %>
<p style="color:red;margin-left:550px;">Sorry, Check your Username and Password..</p>
<%} %>
<br>
<form action="conlog" method="post">
<center>

 
   
<input type="text" name="cname" placeholder="Enter Company Name" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="password" name="pass" placeholder="Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>
 
 <a href="contarctorreg.jsp"><span>NEW </span>CONTRACTOR <span>REGISTER </span>HERE</a>

</div>
  </center>
 </form>


</body>
</html>