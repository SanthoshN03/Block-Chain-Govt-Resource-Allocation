<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type='text/javascript' src='js/jquery-3.6.0.min.js'></script>

</head>
<style>
body {
    display: flex;
    align-items: center;
    justify-content: center;
}
fieldset {
margin-top:90px;
    width: 350px;
    height: 350px;
    text-align: center;
    border-radius: 30px;
    font-size: 30px;
    background-color: black;
    color: grey;
    border: black;
}

input,select{
    background-color: transparent;
    width: 225px;
    height: 25px;
    text-align: left;
    font-size: 20px;
    border-top: none;
    border-right: none;
    border-left: none;
    border-bottom: 1px grey solid;
    outline: none;
    color: lightgray;
}
input:focus {
    border-bottom: #ffffff 1px solid;
}
button {
    display: inline-block;
    color: grey;
    margin-top: 15px;
    height: 40px;
    width: 120px;
    border: 1px grey solid;
    border-radius: 20px;
    font-size: 15px;
    background-color: transparent;
    text-decoration:none;
}

button:hover {
    border: #ffffff 0.01em solid;
    box-shadow: #ffffff 0 0 20px;
    text-decoration:none;
}

h1 {
    margin-top: 10px;
    font-size: 40px;
}
.sign {
    text-align: center;
    font-size: 10px;
}
.tiny {
    width: 10px;
    height: 10px;
    margin-top: 10px;
    accent-color: grey;
    border: grey;
}
.tiny:hover {
    box-shadow: white 0 0 10px;
}
a {
    display: inline-block;
    font-size: 10px;
    text-decoration: none;
    color: white;
}
a:hover {
    font-style: italic;
    color: white;
}
body{

background-image:url("image/i.jpg") ;
background-image:no-repeat;

}
select{
color:sky blue;


}
</style>
<body>
<body>
<form action="deparlogin" method="post">
<fieldset>
    <h1>Login</h1>
    <div class="name">

            <input type="text" name="name" placeholder="User name">

        <br><br>
    </div>
       
    <select name="department">
    <option value="WATER MANAGEMENT">Water Management</option>
    <option value="WASTE MANAGEMENT">Waste Management</option>
    <option value="BULDING DEVELEPMENT">Building Department</option>
    <option value="ROAD SECTOR">Road Sector</option>
     </select><br>
      <br>
        <input class="password" type="password" placeholder="Password" name="pass" ">
    <br>
    
        <a href="departreg.jsp">
          <h2>Register here..</h2>
        </a>
  <br>
  <button>
    LOGIN
    </button><br>
    <%if(session.getAttribute("srno").toString().equals("2")){%>
    <a href="#"> <h2 style="color:tomato;">Sorry, Check your Username & password...</h2></a>
    <%} %>
</fieldset>
</form>
</body>
</html>
</body>
<script>
$('#login-button').click(function() {
	  $('.login-form').toggleClass('open');
	})
</script>
</html>