<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">
<style>
body {
     background: url(image/login.jpg)no-repeat 0px 0px;

    background-size: 100% 100%;
   height: 620px;
	position:relative;
	}
/* .myDiv {
  border: 5px outset #77c732;
  background-color: lightblue;    
  border-radius: 10px;
  width:500px;
  height:330px;
  margin: auto;
  padding-top:30px;
  box-shadow: 25px 20px 20px #888888;
  
} */
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: #CD9575; 
}

</style>


</head>


<body>


<br><br><br>
<center>
<div class="myDiv2">
 Register Here!!
</div>
</center>
<br><br>

<div class="myDiv">
<center>
  <form action="departreg" method="post">
  <input type="text" name="username" placeholder="STAFFNAME" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
 <select name="department" id="cars" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>>
  <option value="WATER MANAGEMENT">WATER MANAGEMENT</option>
  <option value="WASTE MANAGEMENT">WASTE MANAGEMENT.</option>
  <option value="BULIDING DEVELOPMENT ">BULIDING DEVELOPMENT </option>
  <option value="ROAD SECTOR">ROAD SECTOR</option>

</select><br><br>
  <input type="password" name="pass" placeholder="Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="password" name="cpass" placeholder="Confirm Password" style="width:280px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>
 
  </form>
  <button class="btn btn-danger" onclick="history.back();" style="">BACK</button><br><br>
  </center>
</div>



</body>
</html>