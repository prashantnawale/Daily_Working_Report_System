<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Daily Work Reporting</title>

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

	.button {
  background-color: #4CAF50;
  border: none;
  color: white;
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

	
	<div class="margin1">
	
		<h1 style="color:Red">Login</h1>
		
	</div>	
		
		<hr class="new1">
		
		
		
		<form action="Daily_Work_Login_Validation" method="post" >
		<br></br>
		<div class="ex">
		
		
		<%--it is use for take msg to next page --%>
			<h3 style="color:Red;">${param.msg}</h3>
		
		<div class="margin">
		
			<h2 style="color:Black;">Login</h2>
	
		</div>
		
		<div class="margin2">
	
			    	<p>
			        	<label >
					       		 <h5 class='color'>
						            Username:
						            <input type="text"  placeholder='username...' name="username" />
					            </h5>
			        	</label>
			    	</p>
			    	
			    <p>
			        <label>
					        <h5 class='color'>
					            Password:
					            <input type="password"  placeholder='Password... ' name="password"/>
					        </h5>
			        </label>
			    </p>
			    
   		 </div>
    <p>
        <div id="lastRow">
		            <label>
		            
			            <h5 class='keepme'>
			            
			           		 <input type="checkbox" name="rememberMe">Keep me logged in</label>
			            </h5>
			            
		                  <div class="margin3">
		           				 <input type="submit" class="button" value="Login">  <br>
		            
           						<a href='Create_Daily_Login.jsp'>Create New Account?</a>  
         
           				 </div>
            
               
        </div> 
          
    </p>
  </form>
</div>
	
</body>
</html>