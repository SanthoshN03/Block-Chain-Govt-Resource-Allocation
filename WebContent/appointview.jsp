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
  <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<style>
body{
background-color:white;
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
.my{
text-decoration:none;
font-size:50px;
}
</style>
<%String company=session.getAttribute("company").toString(); %>
<body>
<br>
<center>
<div class="mydiv">
<h2><%=company %></h2>
</div>
</center>
<center>
  <div class="container-fluid">  
<table class="table-dark">
 <thead>
    <tr>
     
      <th scope="col">Zone</th>
      <th scope="col">Address</th>
      <th scope="col">Department</th>

      <th scope="col">Project Details</th>
       <th scope="col">Duration</th>
      <th scope="col">Allocate Date</th>
      <th scope="col">Total Cast</th>
      
    </tr>
  </thead>
 


	
        <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde` where companyname='"+company+"'  and  Statuss='Approved'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
	

	


     <tr>
     <th scope="row"><%= rs.getString(4)%></th>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>

      <td><%=rs.getString(10)%></td>
        <td><%=rs.getString(17)%></td>
      <td><%=rs.getString(18)%></td>
      <td><%=rs.getString(21)%></td>
    </tr>


    
     </tr>
	<%} %>






</table>

</div>
</center><br>
<div class="my" style="float:center;">
<a href="contractormain.jsp">Back</a>
</div>
</body>
</html> --%>







<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dbcon.Database"%>
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
text-align:left;
background-color:grey;
}

</style>
</head>

<body>
<%String company=session.getAttribute("company").toString(); %>
<table class="table table-xm table-dark">
   <thead>
    <tr>
     
      <th scope="col">Zone</th>
      <th scope="col">Address</th>
      <th scope="col">Department</th>

      <th scope="col">Project Details</th>
       <th scope="col">Duration</th>
      <th scope="col">Allocate Date</th>
      <th scope="col">Total Cast</th>
      
    </tr>
  </thead>
 


	
        <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`request` where companyname='"+company+"'  and  Status='Requested'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
	

	


     <tr>
     <td scope="row"><%= rs.getString(4)%></th>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>

      <td><%=rs.getString(10)%></td>
        <td><%=rs.getString(15)%></td>
      <td><%=rs.getString(13)%></td>
      <td><%=rs.getString(16)%></td>
    </tr>


    
     </tr>
	<%} %>





	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>