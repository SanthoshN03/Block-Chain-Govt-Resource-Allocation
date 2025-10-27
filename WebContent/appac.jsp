<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="dbcon.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="imple.imple" %>
<%@page import="inter.inter" %>
<%@page import="bean.acceptbean" %>
<%@page import="bean.Block" %>
    <%@ page import="dbcon.Database" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

String id=request.getParameter("id");
System.out.println("company:"+id);

String company=request.getParameter("company");
System.out.println("company:"+company);

String request1=request.getParameter("request");
System.out.println("department:"+request1);
 String depart=request.getParameter("com");
String status="Approved";
String status1="Reject";
String status2="Finish";


try{
	Connection con=Database.create();
	PreparedStatement ps=con.prepareStatement("UPDATE `contract`.`departde` set Statuss=?,companyname=?,requestamt=? where tenderid=? ");
	ps.setString(1, status);
	ps.setString(2, company);
	ps.setString(3, request1);
	ps.setString(4, id);
	ps.executeUpdate();

	PreparedStatement ps2=con.prepareStatement("UPDATE `contract`.`request` set status=? where id=?");
    ps2.setString(1,status1);
    ps2.setString(2,id);
    ;
    ps2.executeUpdate();
    
    PreparedStatement ps3=con.prepareStatement("UPDATE `contract`.`publiccom` set Status=? where department=?");
    ps3.setString(1,status2);
    
    ps3.setString(2,depart);
    
    ps3.executeUpdate();
    response.sendRedirect("govermentmain.jsp");
}
catch(Exception e){
System.out.println(e);	
}

%>


</body>
</html>