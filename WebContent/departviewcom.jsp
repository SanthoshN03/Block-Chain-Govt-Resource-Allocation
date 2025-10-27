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
<%String depart=session.getAttribute("depart").toString(); %>
<table class="table table-xm table-dark">
  <thead>
    <tr>
      <th scope="col">complaint name</th>

      <th scope="col">Complaint Date</th>
      <th scope="col">Complaint Type</th>
      <th scope="col">Complaint Zone</th>
       <th scope="col">Complaint Address</th>
       <th scope="col">Description</th>
           <th scope="col">Documentation</th>
       
           <th scope="col">Complaint Taking</th>
           
    </tr>
  </thead>
    <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`publiccom` where department='"+depart+"' and Status='Forward' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
    	   
       %>
       
     <tr class="bg-danger">
     <td style="text-align: center;"><%=rs.getString(2)%></td>
  
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(9) %></td>
   <td style="text-align: center;"><%=rs.getString(7)%></td>
      <td style="text-align: center;"><%= rs.getString(10) %></td>
       <td style="text-align: center;"><%=  rs.getString(11) %></td>
 <td style="text-align: center;"><%=  rs.getString(12) %></td>
     
                        <td><a href="action.jsp?cemail=<%=rs.getString(3)%>&&cdate=<%=rs.getString(5)%>&&zone=<%=rs.getString(7)%>&&ctype=<%=rs.getString(9)%>&&address=<%=rs.getString(10)%>"><button class="btn btn-primary">Action</button></a></td>
            
      
     </tr>
	<%}%>
	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>