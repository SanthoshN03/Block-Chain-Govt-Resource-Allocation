<%-- 

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
background-color:#16E5D7;


}
th{
margin-bootom:20px;
}

</style>
</head>
<body><br>
<table class="table table-xm table-dark">
  <thead style="margin-top:-20px">
    <tr>
      <th scope="col">complaint name</th>

      <th scope="col">Complaint Date</th>
      <th scope="col">Complaint Type</th>
      <th scope="col">Complaint Zone</th>
       <th scope="col">Complaint Address</th>
       <th scope="col">Description</th>
           <th scope="col">Documentation</th>
           <th scope="col">View</th>
           <th scope="col">Forward</th>
    </tr>
  </thead>
    <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`publiccom` where status='Compliant'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
       
     <tr>
     <td style="text-align: center;"><%=rs.getString(2)%></td>
  
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(9) %></td>
   <td style="text-align: center;"><%=rs.getString(7)%></td>
      <td style="text-align: center;"><%= rs.getString(10) %></td>
       <td style="text-align: center;"><%=  rs.getString(11) %></td>
 <td style="text-align: center;"><%=  rs.getString(12) %></td>
      <td><a href="cview.jsp?filename=<%=rs.getString(12)%>"><button class="btn btn-primary">View</button></a></td>
            <td><a href="Forwardac.jsp?id=<%=rs.getString(1)%>"><button class="btn btn-primary">Forward</button></a></td>
      
     </tr>
	<%}%>
	</table>
<center>	<button class="btn btn-primary" onclick="history.back();" style="">Back</button> <br>
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
   <thead style="">
    <tr>
      <th scope="col">complaint name</th>

      <th scope="col">Complaint Date</th>
      <th scope="col">Complaint Type</th>
      <th scope="col">Complaint Zone</th>
       <th scope="col">Complaint Address</th>
       <th scope="col">Description</th>
           <th scope="col">Documentation</th>
           <th scope="col">View</th>
           <th scope="col">Forward</th>
    </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`publiccom` where status='Compliant'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
       
     <tr>
     <td style="text-align: left;"><%=rs.getString(2)%></td>
  
       <td style="text-align: left;"><%=  rs.getString(4) %></td>
 <td style="text-align: left;"><%=  rs.getString(9) %></td>
   <td style="text-align: left;"><%=rs.getString(7)%></td>
      <td style="text-align: left;"><%= rs.getString(10) %></td>
       <td style="text-align: left;"><%=  rs.getString(11) %></td>
 <td style="text-align: left;"><%=  rs.getString(12) %></td>
      <td style="text-align: left;"><a href="cview.jsp?filename=<%=rs.getString(12)%>"><button class="btn btn-primary">View</button></a></td>
            <td style="text-align: left;"><a href="Forwardac.jsp?id=<%=rs.getString(1)%>"><button class="btn btn-primary">Forward</button></a></td>
      
     </tr>
	<%}%>
	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>