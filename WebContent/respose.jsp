<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import=" dbcon.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ include file="govermentmain.jsp" %>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css1/bootstrap.min.css.map" rel="stylesheet" type="text/css" media="all" /> 
<script src="text/javascript" src='js/jquery-3.6.0.min.js'></script>
<script src="text/javascript" src='js/bootstrap.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/font-awesome.min1.css">
</head>
<style>
body{
background-image: url("image/gm18.jpg");
}

table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 80%;
  margin-left:180px;
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
<%String id=request.getParameter("tenderid"); %>
<% String pattern = "yyyy-MM-dd";
 SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern); 
 String date = simpleDateFormat.format(new Date());
 System.out.println(date); %>
 <center>
<table class = "table table-bordered">


 

   <thead>
      <tr>
       <th>CONTRACT COMAPNY</th>
         <th>DEPARMENT NAME</th>
         <th>DATE</th>
         <th>ZONE</th>
         <th>ALLOCATE AMOUNT</th>
          <th>DURATION</th>
         <th>REQUEST AMOUNT</th>
         <th>ACCEPT</th>
 <th>Rejected</th>
          
       
      </tr>
   </thead>
   
   
	<%
	Connection d = Database.create();
	PreparedStatement p = d.prepareStatement("SELECT * FROM `contract`.`request` where status='Requested' and uploaddate='"+date+"' and id='"+id+"' ");
	ResultSet s=p.executeQuery();

		while(s.next())
		{									
			 String company= s.getString(6);
			 String department= s.getString(1);
			 String alocate= s.getString(4);
			 String requests= s.getString(5);
	
			
		%>
	<tr>
	 <tr> 
	 	<td><%=s.getString(8)%></td>
	<td><%=s.getString(2)%></td>
	<td><%=s.getString(3)%></td>
	<td><%=s.getString(4)%></td>
	<td><%=s.getString(5)%></td>
	<td><%=s.getString(6)%></td>
		<td><%=s.getString(7)%></td>
		<td><a href="qview.jsp?id=<%=s.getString(10)%>"><button class="btn btn-primary">View</button></a></td>
		
	<td><a href="appac.jsp?id=<%=s.getString(1)%>&&company=<%=s.getString(8)%>&&request=<%=s.getString(7)%>&&com=<%=s.getString(2) %>"><button class="btn btn-primary">APPROVED</button></a></td>
<td><a href="reject.jsp?id=<%=s.getString(1)%>&&company=<%=s.getString(8)%>&&request=<%=s.getString(7)%>&&com=<%=s.getString(2) %>"><button class="btn btn-primary">REJECT</button></a></td>
		<%}%>
	
</table>
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

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
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
<%String id=request.getParameter("tenderid"); %>
<% String pattern = "yyyy-MM-dd";
 SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern); 
 String date = simpleDateFormat.format(new Date());
 System.out.println(date); %>

<table class="table table-xm table-dark">
   
 

   <thead>
      <tr>
       <th>CONTRACT COMAPNY</th>
         <th>DEPARMENT NAME</th>
         <th>DATE</th>
         <th>ZONE</th>
         <th>ALLOCATE AMOUNT</th>
          <th>DURATION</th>
         <th>REQUEST AMOUNT</th>
         <th>VIEW</th>
 <th>ACCEPT</th>
  <th>REJECT</th>
          
       
      </tr>
   </thead>
   
   
	<%
	Connection d = Database.create();
	PreparedStatement p = d.prepareStatement("SELECT * FROM `contract`.`request` where status='Requested' and uploaddate='"+date+"' ");
	ResultSet s=p.executeQuery();

		while(s.next())
		{									
			 String company= s.getString(6);
			 String department= s.getString(1);
			 String alocate= s.getString(4);
			 String requests= s.getString(5);
	
			
		%>
	<tr>
	 <tr> 
	 	<td><%=s.getString(8)%></td>
	<td><%=s.getString(2)%></td>
	<td><%=s.getString(3)%></td>
	<td><%=s.getString(4)%></td>
	<td><%=s.getString(5)%></td>
	<td><%=s.getString(6)%></td>
		<td><%=s.getString(7)%></td>
		<td><a href="qview.jsp?id=<%=s.getString(10)%>"><button class="btn btn-primary">View</button></a></td>
		
	<td><a href="appac.jsp?id=<%=s.getString(1)%>&&company=<%=s.getString(8)%>&&request=<%=s.getString(7)%>&&com=<%=s.getString(2) %>"><button class="btn btn-primary">APPROVED</button></a></td>
<td><a href="reject.jsp?id=<%=s.getString(1)%>&&company=<%=s.getString(8)%>&&request=<%=s.getString(7)%>&&com=<%=s.getString(2) %>"><button class="btn btn-primary">REJECT</button></a></td>
		<%}%>
	
	</table><center>
	<button class="btn btn-danger" onclick="history.back();" style=";">BACK</button><br><br></center>
	
</body>
</html>