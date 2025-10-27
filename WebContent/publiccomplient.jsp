<html>
 <%@page import="java.util.*" %>
<link rel="stylesheet" href="css1/bootstrap.min.css">
<head>
  <title>Complaint Form</title>
  <Style>
body{
background-image:url("image/c1.jpg");
background-size:cover;
}
form{
opacity:1;
margin-left:70px;
background-color:#EFDECD;
width:90%;
height:850px;
border-radius:30px;
}
.container{
margin-left:70px;
}
</Style>
  
</head>

<body>
<form action="pobliccompliantjava" method="post" enctype="multipart/form-data"><br>
<div class="container">
<center><h3 style="margin-left:-30px;">
Complainer Details </h3></center><br></br>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4" style="margin-left:10px;">Full Name</label>
      <input type="text" class="form-control" id="inputEmail4" name="name" placeholder="Full Name" style=" margin-left:20px;width:300px;" REQUIRED>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email Address</label>
      <input type="email" class="form-control" id="inputPassword4" name="email"  style=" margin-left:;width:300px;" placeholder="Enter Email Address" required>
    </div>
  </div>
  <div class="form-group" style="margin-left:10px;">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" style=" margin-left:10px;width:300px;" name="add" placeholder="Ex 1234 Main St">
  </div>
  
     <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity" style="margin-left:10px;">Current Date</label>
      <input type="date" name="doc" style=" margin-left:20px;width:300px;" class="form-control" id="inputCity" required>
    </div>
   
    <div class="form-group col-md-4">
      <label for="inputZip" style=" margin-left:190px;">Mobile Number</label>
      <input type="number" name="number" style=" margin-left:190px;width:300px;" placeholder="Mobile Number"class="form-control" id="inputZip" required>
    </div>
 
  
         </div>
  <br></br>
    <h3>Complaint Location And Type of Complaint </h3>
    <div class="form-group col-md-12">
  <label for="inputZip">Zone</label><br>
         
                      <select class="form-control" name="zone" placeholder="Zone" style=" margin-left: 0px;width:300px;" >
                        <option value="THIRUVOTRIYUR">THIRUVOTRIYUR</option>
                        <option value="MANALI">MANALI</option>
                        <option value="MADHAVARAM">MADHAVARAM</option>
                        <option value="TONDIARPET">TONDIARPET</option>
                         <option value="ROYAPURAM">ROYAPURAM</option>
                        <option value="THIRU-VI-KA NAGAR">THIRU-VI-KA NAGAR</option>
                        <option value="AMBATTUR">AMBATTUR</option>
                        <option value="ANNA NAGAR">ANNA NAGAR</option>
                         <option value="TEYNAMPET">TEYNAMPET</option>
                        <option value="KODAMBAKKAM">KODAMBAKKAM</option>
                        <option value="VALASARAVAKKAM">VALASARAVAKKAM</option>
                        <option value="ALANDUR">ALANDUR</option>
                         <option value="ADYAR">ADYAR</option>
                        <option value="PERUNGUDI">PERUNGUDI</option>
                        <option value="SOZHANGANALLUR">SOZHANGANALLUR</option>
                        
                      </select>
         </div>
  

  <div class="form-group">
    <label for="inputAddress" style="margin-left:10px">Complaint Department</label>
<select name="department" class="form-control" style=" margin-left:20px;width:300px;"  placeholder="Zone" >
  <option value="WATER MANAGEMENT">WATER MANAGEMENT</option>
  <option value="WASTE MANAGEMENT">WASTE MANAGEMENT</option>
  <option value="BULIDING DEVELOPMENT ">BULIDING DEVELOPMENT </option>
  <option value="ROAD SECTOR">ROAD SECTOR</option>

</select>  </div>
  

    <div class="form-group col-md-4">
      <label for="inputCity" style=" margin-left:550px;margin-top:-180px;">ComplaintType</label>
      <input type="text" name="type" class="form-control" id="inputCity" style="margin-left:550px;margin-top:-150px;width:300px;" required>
    </div>
  
     <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity" style=" margin-left:570px;margin-top:-110px;">Street </label>
      <input type="text" name="street" class="form-control" style="margin-left:570px;margin-top:-80px;width:300px;" id="inputCity" required>
    </div>
  
 <div class="form-row">
 
  <div class="form-group col-md-6">
  <label for="inputZip" style=" margin-left:-550px;margin-top:0px;">Complaint Description minimum of words</label>
        <textarea type="text" name="desc" style=" margin-left:-530px;margin-top:0px;width:300px;" class="form-control" id="inputZip" required></textarea>
        </div>
         </div>
        
          <div class="form-group col-md-4">
      <label for="inputZip" style=" margin-left:10px;margin-top:-10px;">Upload Compliant Related Document Here!!</label>
      <input type="file" name="filename" style=" margin-left:10px;" class="form-control" id="inputZip" required>
    </div>
    </div>
<center><br>
  <button type="submit" class="btn btn-primary" >Complaint </button>
  </center>
  </div>
</form>
</body>
</html>