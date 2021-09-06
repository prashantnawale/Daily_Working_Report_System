<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Daily Report</title>

<meta name="viewpart" content="width=device-width",initial-scale="1.0">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>
		<%
		try
				{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
					Statement st=con.createStatement();
					ResultSet rs=st.executeQuery("select * from Daily_report1");
					while(rs.next())
				{
	%>
		<table align="center" border="1" width="100" style="width: 100%" class="table table-dark">
	<tbody>
	<tr>
	<th width="25%">Branch_Name</th>
	<th width="25%">Employee_Id</th>
	<th width="25%">Employee_Post</th>	
	<th width="25%">Employee_Name</th>
	<th width="25%">Today's_Date</th>
	<th width="25%">Today's_Work</th>
	<th width="25%">COMPLETED_WORK</th>
	<th width="25%">REMAINING_WORK</th>
	</tr>
	
	<td width="25%"><%=rs.getString(1) %></td>
	<td width="25%"><%=rs.getString(2) %></td>
	<td width="25%"><%=rs.getString(3) %></td>
	<td width="25%"><%=rs.getString(4) %></td>
	<td width="25%"><%=rs.getString(5) %></td>
	<td width="25%"><%=rs.getString(6) %></td>
	<td width="25%"><%=rs.getString(7) %></td>
	<td width="25%"><%=rs.getString(8) %></td>
	
	<td>
	<a href='Edite_Daily_Report1.jsp?Employee_Id=<%=rs.getString("Employee_Id")%>'>Edit</a>
	</td>
	
	</tr>
	</tbody>	
	</table>
	<%
}
}  catch(Exception e)
	{
	e.printStackTrace();
	}

	%>

</body>
</html>