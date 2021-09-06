<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Daily Employee Report</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
<style>
	body  {
  background-image: url("images/Prati.jpg");
  
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
    		color: Black;
    		margin-left: 500px;
    }

</style>
</head>
<body>
<%
		
	 	 String Branch_Name= request.getParameter("Branch_Name");
		 String Employee_Id= request.getParameter("Employee_Id");
	 	 String Employee_Post= request.getParameter("Employee_Post");
	 	 String Employee_Name= request.getParameter("Employee_Name");
	 	 String Date1= request.getParameter("Date1");
	 	 String Started_Work= request.getParameter("Started_Work");
	 	 String Completed_Work= request.getParameter("Completed_Work");
	 	 String Remaining_Work= request.getParameter("Remaining_Work");
	 	 String Other_Work= request.getParameter("Other_Work");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from Daily_report1 where Employee_Id='"+Employee_Id+"'");
			while(rs.next())
		{
			%>
			
			 <div>  
			<form action="Final_Daily_Edited_Report.jsp"  method="post">
			
			<br>
			<center>
					<h3 style="color: black;">Edit Daily Employee Report</h3>
			</center>
			
			</br>
			
			<hr class="hr">
			<h5> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
				Branch Name:	
				<input type ="text" name="Branch_Name" 	placeholder="Branch_Name" required="Branch_Name" value="<%=rs.getString("Branch_Name")%>">
				<br>
				</br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				Employee_Id:
				<input type ="text" name="Employee_Id"	placeholder="Employee_Id" required="Employee_Id" value="<%=rs.getString("Employee_Id")%>">
				<br>
				</br>
				
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
				
						
				Post:     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type ="text" name="Employee_Post" placeholder="Employee_Post" required="Employee_Post" value="<%=rs.getString("Employee_Post")%>">
				<br>
				
				</h5>
			
			<h5> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
				Employee Name:	
				<input type ="text" name="Employee_Name" placeholder="Employee_Name" required="Employee_Name" value="<%=rs.getString("Employee_Name")%>">
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
				Date :	
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;
				<input type ="text" name="Date1" 		placeholder="Date1" required="Date1"         value="<%=rs.getString("Date1")%>">
				
					<br>
					<br>
								
								
					<h5> 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
							
				List_Of_Day_Started_Work:	
											&nbsp;&nbsp;&nbsp;&nbsp;
				
				<input type ="text" name="Started_Work" placeholder="Started_Work"  required="Started_Work" value="<%=rs.getString("Started_Work")%>" rows="3" cols="73">
				
				
					<br>
					</br>
					
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
				End_Of_The_Day_Completed_Work:		
												&nbsp;
						
				<input type ="text" name="Completed_Work" placeholder="Completed_Work" required="Completed_Work" value="<%=rs.getString("Completed_Work")%>"rows="3" cols="73">
				
				</h5>
						<br>
			
			
					<h5> 
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										
									List_Of_Remaining_Work:	
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
				
				<input type ="text" name="Remaining_Work" placeholder="Remaining_Work" required="Remaining_Work" value="<%=rs.getString("Remaining_Work")%>"rows="3" cols="73">
				
				
				</h5>
					
					<br>
					
					<h5> 
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										
									Other_Work:	
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
				<input type ="text" name="Other_Work" placeholder="Other_Work" required="Other_Work" value="<%=rs.getString("Other_Work")%>"rows="3" cols="73">
				
				</h5>
					
					<div style="margin-left: 600px;">
					
					<input type="submit" value="update">
					
				</div>
				
				
			</form>
	  </div>
	  <%
	}
}catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
</body>
</html>