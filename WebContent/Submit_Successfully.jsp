<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit Successfuly</title>
<style type="text/css">
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
  margin-top: 150px;
}
</style>
</head>
<body>

	<% 
	
		response.setHeader("cache-control","no-cache,no-store,must-revalidate"); 
		response.setHeader("Pragma","no-cache");
		response.setHeader("Expires","0");
		

		response.setContentType("text/html");  
        PrintWriter pw = response.getWriter();  
          
        HttpSession sessionHttpSession=request.getSession(false);  
        
        String Branch_Name=(String)session.getAttribute("Branch_Name");
        String Employee_Id=(String)session.getAttribute("Employee_Id");
        String Post=(String)session.getAttribute("Post");
        String Employee_Name=(String)session.getAttribute("Employee_Name");
        String Date=(String)session.getAttribute("Date");
        %>
<button onclick="location.href='Type.jsp'" class="button" type="button">
         Logout</button>
   </div>      
</body>
</html>