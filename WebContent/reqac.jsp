<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="dbcon.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="imple.imple" %>
<%@page import="inter.inter" %>
<%@page import="bean.requestbean" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String id=request.getParameter("id");
System.out.println("contarct id"+id);

String department=request.getParameter("depart");
System.out.println("department:"+department);

String date=request.getParameter("Date");
System.out.println("date:"+date);
 
String zone=request.getParameter("Zone");
System.out.println("zone:"+zone);

String amount=request.getParameter("amount");
System.out.println("amount:"+amount);
 
String Duration=request.getParameter("duration");
System.out.println("Duration"+Duration);

String requests=request.getParameter("request");
System.out.println("requests:"+requests); 

String company=request.getParameter("name");
System.out.println("company:"+company); 
 
requestbean rb=new requestbean();
rb.setId(id);
rb.setDepart(department);
rb.setDate(date);

rb.setZone(zone);
rb.setAamount(amount);
rb.setDuration(Duration);
rb.setRequest(requests);
rb.setCompanyname(company);



inter ib=new imple();
int r=ib.request(rb);
if(r==1){
	response.sendRedirect("Requestsuccess.jsp");
}
else{
	response.sendRedirect("Error.jsp");
}

%>
</body>
</html>