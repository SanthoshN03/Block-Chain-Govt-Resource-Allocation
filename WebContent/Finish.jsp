<%@ page import="dbcon.Database" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%


String id=request.getParameter("id");



String status="Finish";
try{
	Connection con=Database.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `contract`.`publiccom` set Status='"+status+"' where email='"+id+"' ");
	response.sendRedirect("govermentmain.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>