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
<link rel="stylesheet" href="css1/bootstrap.min.css">
<title>Insert title here</title>
</head>
<style>
body{
background-color:#9fa9bb;
}

table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 90%;
}

td{
  text-align: center;
  padding-top: 1.0em;
    padding-bottom: 1.0em;
}

th{
border: 3px solid black;
}
</style>
<body><br><br>
<center>
  <div class="container-fluid">  
<table class="table-dark">
 <thead>
    <tr>
      <th scope="col">DEPARTMENT</th>
      <th scope="col">DATE</th>
      <th scope="col">ZONE</th>
      <th scope="col">COMPLAINT</th>
      <th scope="col">COMPLIANT STREET</th>
 
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde` where Status='NO' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String department=rs.getString(2);  
    	String date=  rs.getString(6); 
    	String Zone=rs.getString(4);
    	String amount=rs.getString(5);
String filename=rs.getString(7);
    	
    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(6)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(7) %></td>
 <td style="text-align: center;"><%=  rs.getString(5) %></td>
 
     </tr>
	<%} %>






</table>

</div><button class="btn-outline-primary" onclick="history.back();" style="float:right;">Back</button>

</center>

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
      <th scope="col">DEPARTMENT</th>
      <th scope="col">DATE</th>
      <th scope="col">ZONE</th>
      <th scope="col">COMPLAINT</th>
      <th scope="col">COMPLAINT STREET</th>
 
    </tr>
  </thead>
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde` where Status='NO' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String department=rs.getString(2);  
    	String date=  rs.getString(6); 
    	String Zone=rs.getString(4);
    	String amount=rs.getString(5);
String filename=rs.getString(7);
    	
    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(6)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(7) %></td>
 <td style="text-align: center;"><%=  rs.getString(5) %></td>
 
     </tr>
	<%} %>





	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>