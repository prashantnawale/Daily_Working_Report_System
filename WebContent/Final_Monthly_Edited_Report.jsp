<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Monthly Report</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

</head>
<body>

	<% 
				
				String Employee_Id=request.getParameter("Employee_Id");
				String Date1 = request.getParameter("Date1");
				String Started_Work=request.getParameter("Started_Work");
				String Completed_Work=request.getParameter("Completed_Work");
				String Remaining_Work=request.getParameter("Remaining_Work");
				String Other_Work=request.getParameter("Other_Work");
		
				
				
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
				PreparedStatement ps=con.prepareStatement("update Monthly_report1 set  Started_Work=?, Completed_Work=?, Remaining_Work=?,Other_Work=? where Employee_Id=? and Date1=? ");
			
			
				ps.setString(6,Date1);
				
				ps.setString(5,Employee_Id);				
				
				ps.setString(1,Started_Work);
				
				ps.setString(2,Completed_Work);
				
				ps.setString(3,Remaining_Work);
				
				ps.setString(4,Other_Work);
				
				
				int i=ps.executeUpdate();
				
				
				
				if(i>0)
				{
					response.sendRedirect("Submit_Successful.jsp");
				}
				
				else
				{
					response.sendRedirect("Error.jsp");
				}
				
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}

		%>

</body>
</html>