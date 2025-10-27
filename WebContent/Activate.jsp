<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import=" dbcon.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ include file="govermentmain.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /> 
<script src="text/javascript" src='js/jquery-3.6.0.min.js'></script>
<script src="text/javascript" src='js/bootstrap.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/font-awesome.min1.css">
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
  width: 70%;
  margin-rigth: 70px;
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
<body>
<center>
  <div class="container-fluid">  
<table class="table-dark">
 <thead>
    <tr>
      <th scope="col">COMPANY NAME</th>
      <th scope="col">EMAIL</th>
      <th scope="col">COMPANY  NUMBER</th>
      <th scope="col">KYC </th>
            <th scope="col">STATUS </th>
      
      <th scope="col">VIEW</th>
      <th scope="col">ACTIVATE</th>
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`contarctors` ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(8) %></td>
  <td style="text-align: center;"><%=  rs.getString(9) %></td>
      <td><a href="kycview.jsp?filename=<%=rs.getString(8)%>"><button class="btn btn-primary">View</button></a></td>
            <td><a href="Activateac.jsp?email=<%=rs.getString(3)%>"><button class="btn btn-primary">ACTIVATE</button></a></td>
      
     </tr>
	<%} %>






</table>

</div>
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
      <th scope="col">COMPANY NAME</th>
      <th scope="col">EMAIL</th>
      <th scope="col">COMPANY  NUMBER</th>
      <th scope="col">KYC </th>
            <th scope="col">STATUS </th>
      
      <th scope="col">DOWNLOAD</th>
      <th scope="col">ACTIVATE</th>
    </tr>
  </thead>
 
      <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`contarctors` ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: left;"><%=rs.getString(2)%></td>
      <td style="text-align: left;"><%= rs.getString(3) %></td>
       <td style="text-align: left;"><%=  rs.getString(4) %></td>
 <td style="text-align: left;"><%=  rs.getString(8) %></td>
  <td style="text-align: left;"><%=  rs.getString(9) %></td>
      <td style="text-align: left;"><a href="kycview.jsp?filename=<%=rs.getString(8)%>"><button class="btn btn-primary">DOWNLOAD</button></a></td>
            <td style="text-align: left;"><a href="Activateac.jsp?email=<%=rs.getString(3)%>"><button class="btn btn-primary">ACTIVATE</button></a></td>
      
     </tr>
	<%} %>





	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>