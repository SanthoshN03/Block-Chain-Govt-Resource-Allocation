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
<style>
table, td, th {
  border: 1px solid black;
}


table {
  border-collapse: collapse;
  width: 100%;
}

td {
  height: 50px;
  vertical-align: bottom;
}
</style>
</head>
<% String depart=session.getAttribute("depart").toString();
   System.out.println(depart);
%>
<div class="mydiv">

</div><br><br> 
<body>
<table class="table-dark">
 <thead>
    <tr>
      <th scope="col">ZONE</th>
      <th scope="col">ADDRESS</th>
      <th scope="col">DEPARTMENT</th>
      <th scope="col">ALLOCATE DATE</th>
<!--       <th scope="col">COMPANY NAME</th>
 --> 
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=Database.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `contract`.`departde`  where department='"+depart+"' and Statuss='Allocated' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String email=rs.getString(2);  
    	String cname=  rs.getString(1); 

    	String kyc=  rs.getString(8); 

    	  
                 	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(4)%></td>
      <td style="text-align: center;"><%= rs.getString(5) %></td>
       <td style="text-align: center;"><%=  rs.getString(6) %></td>
 <td style="text-align: center;"><%=  rs.getString(18) %></td>
<%--     <td style="text-align: center;"><%=  rs.getString(20) %></td>
 --%>   
      
     </tr>
	<%} %>






</table>
<a href="departmain.jsp" style="margin-left:50%; font-size:30px; text-decoration:none; color:red;" >Back</a>
</body>
</html>