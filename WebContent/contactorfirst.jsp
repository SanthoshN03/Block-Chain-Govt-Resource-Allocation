<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  margin: 0;
  background-image:url("image/c1.jpg");
  background-repeat:no-repeat;
 background-size:100%;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 15%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #1955a0;
  color: white;
}

li a:hover:not(.active) {
  background-color: #92a8d1;
  color: white;
}
</style>
<body>
<ul>
<li><a href="contarctlogin.jsp">LOGIN</a></li>
<li><a href="index.jsp">LOGOUT</a></li>
</ul>

</body>
</html>