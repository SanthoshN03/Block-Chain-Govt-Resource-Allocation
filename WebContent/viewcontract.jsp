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
</head>
<style>
body{
background-color:#;
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
  <div class="container-fluid">  
<table class="table-dark">
 <thead>
    <tr>
      <th scope="col">DEPARTMENT</th>
      <th scope="col">DATE</th>
      <th scope="col">ZONE</th>
      <th scope="col">PROJECT</th>
      <th scope="col">AMOUNT</th>
            <th scope="col">DURATION</th>
      
            <th scope="col">VIEW</th>
            <th scope="col">REQUEST</th>
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde` where Statuss='Allocated' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String id=rs.getString(1);  
    	String date=  rs.getString(6); 
    	String Zone=rs.getString(4);
    	String amount=rs.getString(5);
String filename=rs.getString(7);
    	
    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(6)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(10) %></td>
 <td style="text-align: center;"><%=  rs.getString(16) %></td>
 <td style="text-align: center;"><%=  rs.getString(17) %></td>
      <td><a href="tendorsview.jsp?filename=<%=rs.getString(10)%>"><button class="btn btn-primary">VIEW</button></a></td>
      <td><a href="request.jsp?id=<%=rs.getString(24)%>&&department=<%=rs.getString(6)%>&&date=<%=rs.getString(18)%>&&zone=<%=Zone%>&&amount=<%=rs.getString(16)%>&&duration=<%=rs.getString(17)%>"><button class="btn btn-primary">REQUEST</button></a></td>
     
     </tr>
	<%} %>






</table><br>
</br>
<button class="btn btn-outline-danger" onclick="history.back();" style="float:center;">BACK</button><br><br>

</div>
</center>

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

<table class="table table-xm table-dark">
   <thead>
    <tr>
      <th scope="col">DEPARTMENT</th>
      <th scope="col">DATE</th>
      <th scope="col">ZONE</th>
      <th scope="col">PROJECT</th>
      <th scope="col">AMOUNT</th>
            <th scope="col">DURATION</th>
      
            <th scope="col">VIEW</th>
            <th scope="col">REQUEST</th>
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde`  ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String id=rs.getString(1);  
    	String date=  rs.getString(6); 
    	String Zone=rs.getString(4);
    	String amount=rs.getString(5);
String filename=rs.getString(7);
    	
    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: left;"><%=rs.getString(6)%></td>
      <td style="text-align: left;"><%= rs.getString(3) %></td>
       <td style="text-align: left;"><%=  rs.getString(4) %></td>
 <td style="text-align: left;"><%=  rs.getString(10) %></td>
 <td style="text-align: left;"><%=  rs.getString(16) %></td>
 <td style="text-align: left;"><%=  rs.getString(17) %></td>
      <td style="text-align: left;"><a href="tendorsview.jsp?filename=<%=rs.getString(10)%>"><button class="btn btn-primary">VIEW</button></a></td>
      <td style="text-align: left;"><a href="request.jsp?id=<%=rs.getString(24)%>&&department=<%=rs.getString(6)%>&&date=<%=rs.getString(18)%>&&zone=<%=Zone%>&&amount=<%=rs.getString(16)%>&&duration=<%=rs.getString(17)%>"><button class="btn btn-primary">REQUEST</button></a></td>
     
     </tr>
	<%} %>




	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>