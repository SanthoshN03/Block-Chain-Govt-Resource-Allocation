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
</style>
<body>
<center>
<div class="mydiv">
<h2>Appointed </h2>
</div>
</center>
<center>
  <div class="container-fluid">  
<table class="table-dark">
 <thead>
    <tr>
      <th scope="col">COMPANY NAME</th>
      <th scope="col">DEPARTMENT</th>
      <th scope="col">AMOUNT</th>
      <th scope="col">STATUS</th>
      
    </tr>
  </thead>
 
<%String company=session.getAttribute("company").toString(); %>

	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`reponse` where cname='"+company+"' and statu='Rejected' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String departments=rs.getString(2);  
    	String date=  rs.getString(3); 
    	String Zone=rs.getString(4);
    	String amount=rs.getString(5);
String filename=rs.getString(7);
    	
    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(5) %></td>
 <td style="text-align: center;"><%=  rs.getString(7) %></td>


    
     </tr>
	<%} %>






</table>

</div>
</center>

</body>
</html>