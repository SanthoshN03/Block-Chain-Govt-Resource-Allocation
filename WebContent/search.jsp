<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbcon.Database" %>
    <%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%@ include file="publicmain.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
 color:white;
}
th{
 height: 30px;
 color: red;
}</style>
<body>
<table>
<thead>
<tr>
<th scope="col"> ZONE </th>
<th scope="col">COMPLAINTER NAME  </th>
<th scope="col">ADDRESS </th>
<th scope="col">DEPARTMENT </th>
<th scope="col">DURATION</th>
<th scope="col">TENDOR COMPANY</th>
</tr>
<% String search=request.getParameter("search"); %>
<% 

try{
	

	Connection con=Database.create();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("SELECT * FROM contract.departde p where email like '%"+search+"%' and not email='' ");
	while(rs.next())
	{
	
	
%>
<tr>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(2) %> </td>
<td><%=rs.getString(5) %> </td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(17) %></td>
<td><%=rs.getString(20) %></td>

</tr>
<%}
	}
	catch(Exception e){
		System.out.println(e);
	}
	%>
	</thead>
	</table>
</body>
</html>