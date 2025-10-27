<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.http.HttpSession" %>  
      
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <title>File Upload</title>
        <style type="text/css">
             body {    
                background-image: url("image/gm3.jpg");
                background-repeat: no-repeat;
                 background-size: 100% 800px;
                }
            h1,label
            {
                color: black;
            }
        </style>
</head>
<body>

	<%
		Random r1=new Random(); 

		 String key2="ABCDE12345";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>
		
	
		 <%  String department=session.getAttribute("depart").toString(); %>
       
       

       
       
       

        <div class="col-sm-4"></div>
        <div class="col-sm-4">
        <center><br><br>
            <h1>UPLOAD FILE</h1><br><br>
            <form action="upload" method="post" enctype="multipart/form-data">
  <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm">DEPARTMENT:</label>
    <div class="col-sm-7">
      <input type="text"  name="department" class="form-control form-control-sm" placeholder="DEPARTMENT" value="<%=department %>" readonly="readonly">
    </div>
  </div>
                
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm"></label>
    <div class="col-sm-7">
      <input type="text" name="pass" class="form-control form-control-sm" placeholder="Trapdoor key" value="<%=t6 %>" readonly="readonly">
    </div>
  </div>
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm">DATE:</label>
    <div class="col-sm-7">
      <input type="date"  name="date" class="form-control form-control-sm" placeholder="DEPARTMENT"  >
    </div>
  </div>
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm">ZONE</label>
    <div class="col-sm-7">
      <input type="text"  name="zone" class="form-control form-control-sm" placeholder="ZONE"  >
    </div>
  </div>
                
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-5 col-form-label col-form-label-sm">Upload Your File:</label>
    <div class="col-sm-7">
      <input type="file" name="pass" class="form-control form-control-sm" accept="application/pdf">
    </div>
  </div>
                
           <input type="submit" class="btn btn-success" value="Upload">               
</form>
        </center>
        </div>
        <div class="col-sm-4"></div>
</body>
</html>