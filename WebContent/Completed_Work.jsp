<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Employee</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

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
    


 .Heading
    {
    		color: Black;
    		margin-left: 500px;
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

				
    </style>
</head>
<body>

				<form action="Search_Employee11.jsp" method="post">
				
				<br>
					 <div class="Heading">
							<h2>Search Employee </h2>
					</div>
					
					<hr class="hr">
					
					</br>
					<br>
					<br>
					<br>
					
			<h5> 
									
			
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
							Employee _Id:	
									     &nbsp;&nbsp;&nbsp;&nbsp;
							<input type='text' placeholder='Employee_Id' name='Employee_Id' required > 
			
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
							Post:		
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type='text' placeholder='Post' name='Post' >  <br></br>	
									
			</h5>
			
			
			
					<h5> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
								Employee Name:						
												<input type='text' placeholder='Employee_Name' name='Employee_Name' >
								
								
								
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Date :	
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;
						
						<input type='text' placeholder='Date' name='Date1' required>
								
								<br>
								<br>
								
								<div class="Button">
									<input type="submit" value='Submit'>
									&nbsp;&nbsp;&nbsp;
							</div>
								
</body>
</html>