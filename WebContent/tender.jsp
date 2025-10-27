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
background-image:url("image/photo-1555848962-6e79363ec58f.avif");
background-size:cover;
width:100%;
}
label{
color:tomato;
}h3{
color:white;}
</style>
</head>

<%String depart=session.getAttribute("depart").toString(); 
	UUID uuid=UUID.randomUUID();%>

<body>

<form action="departactionjava" method="post" enctype="multipart/form-data"><br>
<h3>Complaining Person's Details </h3>
  <div class="form-row">
    <div class="form-group col-md-6">   <input type="hidden" class="form-control" id="inputPassword4" name="email"  placeholder="Enter Email Address" required>
    </div>
  </div>
       
 
    <div class="form-group col-md-6">
      <label for="inputPassword4">Report Date</label>
      <input type="date" class="form-control" id="inputPassword4" name="date" style="width:270px;"  placeholder="Enter Email Address" required>
    </div>
  </div>
 
  
     <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Complaint Zone</label>
      <input type="text" name="zone" style="margin-left:20px;width:270px;" class="form-control" id="inputCity" required>
    </div>
   
    <div class="form-group col-md-4">
      <label for="inputZip" style="margin-top:-90px;width:;">Complaint Address</label>
      <input type="text" name="add" style="margin-top:-60px;width:270px;" class="form-control" id="inputZip" required>
    </div>
 
  
         </div>
  
    <h3>Complaint Location And Type of Complaint </h3>
    
  <div class="form-group">
    <label for="inputAddress">Complaint Department</label>
<input type="text" name="type" style="margin-left:20px;width:270px;"  value="<%=depart %>" class="form-control"  id="inputCity" required>  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Complaint Type</label>
      <input type="text" name="type" style="margin-left:20px;width:270px;" class="form-control" id="inputCity" required>
    </div>
    </div>
     <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Have you need government support </label>
      <select name="tender" style="margin-left:20px;width:270px;" class="form-control"  placeholder="Zone" >
  <option value="YES">YES</option>
  <option value="NO">NO</option>


</select>
    </div>
  
 
  <div class="form-group col-md-6">
  <label for="inputZip" style="margin-left:-220px;width:270px;margin-top:-170px;"> Status</label>
        <textarea type="text" style="margin-left:-220px;margin-top:-140px;width:270px;" name="desc" class="form-control" id="inputZip" required></textarea>
        </div>
         </div>
        <input type="hidden" class="form-control" id="inputPassword4" name="uuid" value="<%=uuid %>" placeholder="Enter Email Address" required>
          <div class="form-group col-md-4">
      <label for="inputZip" style="margin-left:450px;margin-top:-90px;width:270px;">Upload Complaint Document here</label>
      <input type="file" name="filename" class="form-control" style="margin-left:450px;margin-top:-60px;width:270px;" id="inputZip" required>
    </div>
<center><br>
  <button type="submit" class="btn btn-primary" style="margin-left:;margin-top:-40px;">Report Submit </button>
  </center>
</form>
</body>
</html>