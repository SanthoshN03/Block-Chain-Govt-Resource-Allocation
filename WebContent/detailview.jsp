<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import=" dbcon.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ include file="govermentmain.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-color:black;}

table {
    width:70%;
    margin-top: 30px;
    margin-rigth: 200px;
}
table, th, td {
    border: 1px dotted white;
    border-collapse: collapse;
    color:black;
}
th, td {
    padding: 1px 9px;
    text-align: center;
}
table#t01 tr:nth-child(even) {
    background-color: black;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: black;
    color: black;
}
</style>

<body>
<center>
<table class = "table table-bordered" style="float:20px;">


 

   <thead>
      <tr>
         <th>DEPARMENT NAME</th>
         <th>DATE</th>
         <th>ZONE</th>
         <th>DOCUMENT</th>
         <th>ADDRESS</th>
         <th>COMPLIENT</th>
         <th>VIEW</th>
         <th>UPLOAD</th>
          
       
      </tr>
   </thead>
   
   
	<%
	Connection d = Database.create();
	PreparedStatement p = d.prepareStatement("SELECT * FROM `contract`.`departde` where status='YES'");
	ResultSet s=p.executeQuery();

		while(s.next())
		{									
			  
		
			
		%>
	<tr>
	 <tr>
	<td><%=s.getString(6)%></td>
	<td><%=s.getString(3)%></td>
	<td><%=s.getString(4)%></td>
	<td><%=s.getString(10)%></td>
		<td><%=s.getString(5)%></td>
	<td><%=s.getString(7)%></td>
<td><a href="Down.jsp?filename=<%=s.getString(10)%>"><button class="btn btn-primary">DOWNLOAD</button></a></td>
<td><a href="fundallot.jsp?id=<%=s.getString(1) %>&&depart=<%=s.getString(6)%>&&date=<%=s.getString(3)%>&&zone=<%=s.getString(4)%>&&Add=<%=s.getString(5)%>&&filekey=<%=s.getString(4)%>"><button class="btn btn-primary">UPLOAD</button></a></td>
		<%}%>
	
</table>
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
         <th>DEPARMENT NAME</th>
         <th>DATE</th>
         <th>ZONE</th>
         <th>DOCUMENT</th>
         <th>ADDRESS</th>
         <th>COMPLIENT</th>
         <th>VIEW</th>
         <th>UPLOAD</th>
          
       
      </tr>
   </thead>
   
     <%
	Connection d = Database.create();
	PreparedStatement p = d.prepareStatement("SELECT * FROM `contract`.`departde` where status='YES'");
	ResultSet s=p.executeQuery();

		while(s.next())
		{									
			  
		
			
		%>
	<tr>
	 <tr>
	<td><%=s.getString(6)%></td>
	<td><%=s.getString(3)%></td>
	<td><%=s.getString(4)%></td>
	<td><%=s.getString(10)%></td>
		<td><%=s.getString(5)%></td>
	<td><%=s.getString(7)%></td>
<td><a href="Down.jsp?filename=<%=s.getString(10)%>"><button class="btn btn-primary">VIEW</button></a></td>
<td><a href="fundallot.jsp?id=<%=s.getString(1) %>&&depart=<%=s.getString(6)%>&&date=<%=s.getString(3)%>&&zone=<%=s.getString(4)%>&&Add=<%=s.getString(5)%>&&filekey=<%=s.getString(4)%>"><button class="btn btn-primary">UPLOAD</button></a></td>
		<%}%>
	
	</table><center>
	<a href="govermentmain.jsp"><button class="btn btn-danger"  style=";">BACK</button></a><br><br></center>
	
</body>
</html>