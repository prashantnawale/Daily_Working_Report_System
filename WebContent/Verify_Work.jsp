<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verify_Work </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style>
	body  {
  background-image: url("images/Prati.jpg");
  background-repeat: no-repeat;
  background-size: auto;
   background-size: 1500px 800px;
}

	.button {
  background-color: #4CAF50;
  border: medium;
  color: black;
  font-family:serif;
  padding: 8px 22px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
	
    div.ex
    {
        width:500px;
        padding:20px;
        margin-bottom:50px;
        margin-left:400px;
        background-image: url("images/blure.jpg"); 
       border:5px solid green;
         background-color:white;   
    }
    
    .color{
    color:Black;    
    }
    
    .keepme{
    color:green;
    margin-left: 70px;
    }
#idBox {
    margin-left: 45px;
}
#lastRow {
    margin-left: 65px;
}
						
  hr.new1 {
  border: 2px solid red;
  border-radius: 2.5px;
}

.margin {
		margin-left: 170px;
}

.margin1 {
		margin-left: 570px;
}

.margin2 {
		margin-left: 70px;
}

.margin3 {
		margin-left: 110px;
}


</style>
	
</head>
<body>
<center>

<br></br>

<h3>Select Type Of Verification</h3>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button onclick="location.href='Search_Employee.jsp'" type="button" class="button">
         Daily_Work</button>
         
         
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <button onclick="location.href='Search_Employee1.jsp'" type="button" class="button">
         Monthly_Work</button>
         
         
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
         <button onclick="location.href='Search_Datewise_Daily_Report.jsp'" type="button" class="button">
         Date to Date</button>


				
				
				

</center>

</body>
</html>