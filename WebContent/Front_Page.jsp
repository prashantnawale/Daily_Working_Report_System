<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Daily Report Front Page</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	
	<style type="text/css">
	body  {
  background-image: url("images/IMG-Jyoti.jpg");
  background-repeat: no-repeat;
  background-size: auto;
   background-size: 700px 700px;
   background-position:340px;
    margin-top:44%;
    margin-left: 120px;
}

.button{
 background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 54px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 8px 4px;
  cursor: pointer;
  position:relative;
  margin-top:0%;

}
	</style>
</head>
<body>
<center>
		
		<% PrintWriter pw=response.getWriter();
			System.out.println("Enter in Project"); %>
		<form action="Type.jsp" method="post">
		
		
                  
         <input type="submit" class="button" value="NEXT">  
            
         
               
      
         </form>

</body>
</html>