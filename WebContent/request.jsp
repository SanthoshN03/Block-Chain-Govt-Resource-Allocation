<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:blue; 
}

table {
  
  width: 30%;
}
td {
  height: 50px;
   text-align: center;
}

</style>

</head>
<body>
<%String department=session.getAttribute("company").toString(); %>
<%
int reg=0;
String id=request.getParameter("id");
String departments=request.getParameter("department");
String date=request.getParameter("date");
String zone=request.getParameter("zone");
String amount=request.getParameter("amount");
String duration=request.getParameter("duration");

%>
<br><br>
<center>
<div class="myDiv2">
CONTRACT REQUEST PAGE
</div>
</center>
<center>
<form action="Request"  method="post"  enctype="multipart/form-data">
<table>

<br>
<tr>

<td><input type="hidden" value="<%=id%>" name="id" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly><br><br></td>
</tr>
<tr>
<td>DEPARTMENT</td>
<td><input type="text" value="<%=departments%>" name="depart" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly><br><br></td>
</tr>

<tr>
<td>REQUEST VIEW DATE</td>
<td><input type="text" value="<%=date%>" name="Date" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>

<tr>
<td>ZONE</td>
<td><input type="text" value="<%=zone%>" name="Zone" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly><br><br></td>
</tr>

<tr>
<td>ALLOCATED AMOUNT</td>
<td><input type="text" name="amount" value="<%=amount%>" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly><br><br></td>
</tr>
<tr>
<td>DURATION</td>
<td><input type="text" name="duration" value="<%=duration %>" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>

</tr>
<tr>
<td>REQUEST AMOUNT</td>
<td><input type="text" name="request"  style="width:180px;height:30px;border-radius: 10px;text-align:center;" required><br><br></td>
</tr>

<tr>
<td>COMPANY NAME</td>
<td><input type="text" name="name" value="<%=department%>" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly><br><br></td>
</tr>

<tr>
<td>UPLOAD QUOTATION HERE</td>
<td><input type="file" name="filename"  style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly><br><br></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:110px;height:40px;border-radius: 1px;text-align:center; background-color: #ff6666"><br><br></td>
</tr>

</table>
</form>
</center>

</body>
</html>