<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import=" dbcon.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">


<style>
body{
background-image:url("image/details.jpg");
background-repeat: no-repeat;
background-size:100% 400%;
}


</style>
</head>
<%String company=session.getAttribute("company").toString(); %>
<body><br>
<table class="table table-sm table-dark">
  <thead>
    <tr>
      <th scope="col">Zone</th>
      <th scope="col">Address</th>
      <th scope="col">Department</th>
      <th scope="col">Company Name</th>
      <th scope="col">Project Details</th>
       <th scope="col">Duration</th>
      <th scope="col">Allocate Date</th>
      <th scope="col">Total Cast</th>
      
    </tr>
  </thead>
  
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde` where  Statuss='Approved'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
	
  <tbody>
  
    <tr class="bg-danger">
      <th scope="row"><%= rs.getString(4)%></th>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
       <td><%=rs.getString(20)%></td>
      <td><%=rs.getString(10)%></td>
        <td><%=rs.getString(17)%></td>
      <td><%=rs.getString(18)%></td>
      <td><%=rs.getString(21)%></td>
    </tr>
    	<%} %>
   
  </tbody>
</table>
<button class="btn btn-outline-dark" onclick="history.back();" style="float:right;">BACK</button><br>

</body>
</html> --%>







<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" dbcon.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">
<style>
body{
background-color:#E3DAC9;
}

td{
background-color:grey;
}
</style>
</head>

<body>

<table class="table table-xm table-dark">
    <thead>
    <tr>
      <th scope="col">Zone</th>
      <th scope="col">Address</th>
      <th scope="col">Department</th>
      <th scope="col">Company Name</th>
      <th scope="col">Project Details</th>
       <th scope="col">Duration</th>
      <th scope="col">Allocate Date</th>
      <th scope="col">Total Cast</th>
      
    </tr>
  </thead>
  
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde` where  Statuss='Allocated'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
	
  <tbody>
  
    <tr class="bg-danger">
      <td scope="row"><%= rs.getString(4)%></th>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
       <td><%=rs.getString(20)%></td>
      <td><%=rs.getString(10)%></td>
        <td><%=rs.getString(17)%></td>
      <td><%=rs.getString(18)%></td>
      <td><%=rs.getString(21)%></td>
    </tr>
    	<%} %>
   
  </tbody>
	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>