<%@ page import="dbcon.Database" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%


String name=request.getParameter("name");
String email=request.getParameter("email");


String status="Activate";
try{
	Connection con=Database.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `contract`.`contarctors` set status='"+status+"' where companyemail='"+email+"' ");
	response.sendRedirect("Activate.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>