<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.UUID" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">
<style>
body{
background-image:url("image/r3.jpg");
background-size:cover;
}
label{
color:red;
}h3{
color:white;}
.container{
background-color:#72A0C1;
width:1000px;
border-radius:30px;
}
</style>
</head>

<%String depart=session.getAttribute("depart").toString(); 
	UUID uuid=UUID.randomUUID();%>
<% 
String cemail=request.getParameter("cemail");
String cdate=request.getParameter("cdate");
String zone=request.getParameter("zone");
String ctype=request.getParameter("ctype");
String address=request.getParameter("address");
%>
<body>

<form action="departactionjava" method="post" enctype="multipart/form-data"><br>
<div class="container"><h3>Complaining Person's Details </h3>
  <div class="form-row">
    <div class="form-group col-md-6">  
     <input type="hidden" class="form-control" id="inputPassword4" name="email" value="<%=cemail %>" placeholder="Enter Email Address" required>
    </div>
  </div>
       
 
    <div class="form-group col-md-6">
      <label for="inputPassword4">Report Date</label>
      <input type="date" style="margin-left:;width:270px;" class="form-control" id="inputPassword4" name="date"  placeholder="Enter Email Address" required>
    </div>
 
 
  
     <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity" style="margin-left:20px;">Complaint Zone</label>
      <input type="text" name="zone" style="margin-left:20px;width:270px;" value="<%=zone %>" class="form-control" id="inputCity" required>
    </div>
   
    <div class="form-group col-md-4">
      <label for="inputZip" style="margin-left:140px;">Complaint Address</label>
      <input type="text" name="add" style="margin-left:140px;width:270px;" value="<%=address %>" class="form-control" id="inputZip" required>
    </div>
 
  
         </div>
  
    <h3>Complaint Location And Type of Complaint </h3>
    
  <div class="form-group">
    <label for="inputAddress" style="margin-left:20px;">Complaint Department</label>
<input type="text" name="type" style="margin-left:20px;width:270px;"  value="<%=depart %>" class="form-control"  id="inputCity" required>  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity" style="margin-left:20px;">Complaint Type</label>
      <input type="text" name="type"  style="margin-left:20px;width:270px;" value="<%=ctype %>" class="form-control" id="inputCity" required>
    </div>
    </div>
     <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity" style="margin-left:20px;">if take government support </label>
      <select name="tender" class="form-control" style="margin-left:20px;width:270px;" placeholder="Zone" >
  <option value="YES">YES</option>
  <option value="NO">NO</option>


</select>
    </div>
  
 
  <div class="form-group col-md-6">
  <label for="inputZip" style="margin-left:-20px;"> Status</label>
        <textarea type="text" name="desc" style="margin-left:-20px;width:270px;" class="form-control" id="inputZip" required></textarea>
        </div>
         </div>
        <input type="hidden" class="form-control" id="inputPassword4" name="uuid" value="<%=uuid %>" placeholder="Enter Email Address" required>
          <div class="form-group col-md-4">
      <label for="inputZip">Upload Compliant Document here</label>
      <input type="file" style="margin-left:10PX;width:270px;" name="filename" class="form-control" id="inputZip" required>
    </div>
<center><br>
  <button type="submit" class="btn btn-primary">Report Submit </button>
  </center>
   </div>
</form>
</body>
</html>