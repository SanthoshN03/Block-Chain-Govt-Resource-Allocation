<%@ page import="dbcon.Database" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%



String id=request.getParameter("id");


String amount=request.getParameter("amount");
String Edate=request.getParameter("Edate");
String dura=request.getParameter("dura");
String status1="action";
String status="Allocated";


try{
	Connection con=Database.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `contract`.`departde` set status='"+status1+"',Statuss='"+status+"',esamount='"+amount+"',Duration='"+dura+"',Alodate='"+Edate+"' where id='"+id+"' ");
	response.sendRedirect("detailview.jsp?valid");
}

catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>