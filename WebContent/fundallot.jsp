<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>

<style>
body{
background-image:url("image/istockphoto-670463208-612x612.jpg");
background-size:cover;
}
* {
  box-sizing: border-box;
  width:100%;
}

input[type=text], select, textarea {
  width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=number]{
 width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=date]{
 width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
  color:white;
}

input[type=submit] {
  background-color: #000080;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
  width:20%;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #BFAFB2;

  width:60%;
  height:730px;
}

.col-25 {
  float: left;
  width: 35%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
a{
text-decoration:none;
color:red;
float:right;
font-size:20px;
}
</style>



<body>
<% 
String id=request.getParameter("id");
String department=request.getParameter("depart"); 
String date=request.getParameter("date");
 String zone=request.getParameter("zone"); 
 String add=request.getParameter("Add");

 
%>
<center>
<div class="container">
  <form action="allocate.jsp" method="post">
  <div class="row">
     
      <div class="col-50">
        <input type="hidden" id="ids" name="id" value="<%=id %>" readonly>
      </div>
    </div>
    <div class="row">
      <div class="col-30">
        <label for="fname">DEPARTMENT</label>
      </div>
      <div class="col-50">
        <input type="text" id="fname" name="firstname" value="<%=department %>" readonly>
      </div>
    </div>
    <div class="row">
      <div class="col-30">
        <label for="lname">UPLOAD  DATE</label>
      </div>
      <div class="col-50">
        <input type="text" id="lname" name="lastname" value="<%= date%>" readonly>
      </div>
        <div class="col-30">
        <label for="fname">ZONE</label>
      </div>
      <div class="col-50">
        <input type="text" id="fname" name="zone"  value="<%= zone%>" readonly>
      </div>
    </div>
    <div class="row">
      <div class="col-30">
        <label for="lname">ESTIMATE AMOUNT</label>
      </div>
      <div class="col-50">
        <input type="text" id="lname" name="amount" placeholder="Estimate Amount..">
      </div>
    
     
    </div>
    <div class="row">
      <div class="col-30">
        <label for="lname">TENDER VIEW DATE</label>
      </div>
      <div class="col-50">
        <input type="date" id="lname" name="Edate" placeholder="Your last name..">
      </div>
      </div>
     <div class="row">
      <div class="col-30">
        <label for="lname">ADDRESS</label>
      </div>
      <div class="col-50">
        <textarea type="text" id="lname" name="add"  ><%= add%></textarea>
        </div>
      </div>
      <div class="row">
      <div class="col-30">
        <label for="lname">PROJECT DURATION</label>
      </div>
      <div class="col-50">
        <input type="text" id="lname" name="dura"  placeholder="Duration">
      </div>
     
    </div>
   
    <div class="row">
      <div class="col-30">
        
      </div>
      <div class="col-75">
        <input type="hidden" id="lname" name="process" value="processing">
      </div>
     
    </div>
    <br>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form><br>
  <a href="govermentmain.jsp"><button style="width:80px;height:30px;border-radius:10px;background-color:tomato;">Back</button> </a>
</div>
</center>
</body>
</html>