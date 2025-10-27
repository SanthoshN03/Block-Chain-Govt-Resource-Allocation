<%@ page import="dbcon.Database" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%


String cname=request.getParameter("company");
String id=request.getParameter("id");
String status="Rejected";

try{
	Connection con=Database.create();
	PreparedStatement ps=con.prepareStatement("DELETE  FROM`contract`.`request` where id=? and companyname=? ");
	
	ps.setString(1, id);
	ps.setString(2, cname);

	ps.executeUpdate();


    
  
    response.sendRedirect("govermentmain.jsp");
}
catch(Exception e){
System.out.println(e);	
}


%>