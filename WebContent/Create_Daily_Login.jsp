<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<style>
	body  {
  background-image: url("images/sava.jpg");
  background-repeat: no-repeat;
  background-size: auto;
   background-size: 1500px 800px;
}

  div.ex
    {
        width:650px;
        padding:20px;
        margin-bottom:50px;
        margin-left:50px;
        background-image: url("images/blure.jpg"); 
       border:5px solid green;
         background-color:white;   
    }
    
    
    .hr
    {
    
  border: 5px solid red;
  border-radius: 2.5px;
}
    
    .Button
    {
    	margin-left: 600px;
    }
    
    .Heading
    {
    		color: red;
    		margin-left: 500px;
    }

</style>
</head>
<body>
<center>
		<h1 style="color: green">Create An Account</h1>
		<hr class="new5">
	
		<h3 style="color:Red;">${param.msg}</h3>
		
		<h5>
			<form action="Create_Daily_Login_Validation" method="post" >
				<div class="ex">
					<br> </br> First_Name:<input type="text"
						placeholder="enter your first_name" name="firstname"><br></br>

					Last_Name:<input type="text"
						placeholder="enter your last_name" name="lastname"><br></br> 
						
						
					Username:<input type="text"
						placeholder="enter Username" name="uname"><br></br>

					Password:<input type="password"
						placeholder="enter your Password" name="pass"><br></br>
					 
					Confirm_Password:<input type="password" 
						placeholder="enter your Password" name="confirmpassword"><br></br>

					<input type="submit" value="Create_Account"> <br></br> 
					<a	href='Daily_Work_Login.jsp'> login </a>
		</h5>
		</div>
		</form>
</body>
</html>