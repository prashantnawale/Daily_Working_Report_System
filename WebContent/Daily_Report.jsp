<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.TimeZone" %>
<%@page import="java.util.*" %><html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Daily Employee Report</title>
 <%--  <link rel="stylesheet" media="screen,projection" type="text/css" href="./main.css" />		--%>
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
    
    div.static {
  position: fixed;
 background-color:White;
  top:10px;
  right: 450px;
  width: 400px;
 
 
  color: red;
    		margin-left: 500px;
    
    .Heading
    {
    		color: red;
    		margin-left: 500px;
    }

</style>
</head>
<body>


		<form action="Daily_Report_Detail_Validation" method="post">

<br>
					    <div class="static">
								
								<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Daily Report Detail</h3>
						</div>
						
						<a href='Completed_Work.jsp'>Submit_Today's_Completed_Work?</a>
						
						<hr class="hr">
			
			<%
			 TimeZone.setDefault(TimeZone.getTimeZone("GMT"));
			SimpleDateFormat format=new SimpleDateFormat("dd-MM-yyyy HH:mm:ss aa");
			Date today4 =new Date() ;
			String date4 = format.format(today4);
			
			%>
				<%
					out.println(date4);
				%>
				
			
			
			
</br>
		 	<h5> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Branch Name:	
									     <label for="Branch_Name"></label>
										  <select name="Branch_Name" id="Branch_Name">
										   <option value="---">--SELECT--</option>
										  <option value="AHMEDNAGAR HO">AHMEDNAGAR HO</option>
										  <option value="MONDHA">MONDHA</option>
										  <option value="MIRAJGON">MIRAJGON</option>
										  <option value="PARANDA">PARANDA</option>
										    <option value="KADA">KADA</option>
										    <option value="ASHTI">ASHTI</option>
										    <option value="PATODA">PATODA</option>
										    <option value="KARJAT">KARJAT</option>
										    <option value="VASHI">VASHI</option>
										    <option value="BHUM">BHUM</option>
										    <option value="AHMEDNAGAR">AHMEDNAGAR</option>
										     <option value="AMALNER">AMALNER</option>
										     <option value="RASHIN">RASHIN</option>
										     <option value="NANNAJ">NANNAJ</option>
										     <option value="JAWALA">JAWALA</option>
										      <option value="ARANGAON">ARANGAON</option>
										      <option value="KHARDA">KHARDA</option>
										       <option value="JAMKHED">JAMKHED</option>
										       <option value="TEMBHURNI">TEMBHURNI</option>
										       <option value="TERKHEDA">TERKHEDA</option>
										       <option value="PATHARDI">PATHARDI</option>
										       <option value="USMANABAD">USMANABAD</option>
										       <option value="KURDUWADI">KURDUWADI</option>
										       <option value="KARMALA">KARMALA</option>
										       <option value="SHRIGONDA">SHRIGONDA</option>
										       <option value="NAGAPUR">NAGAPUR</option>
										       <option value="PUNE">PUNE</option>
										       <option value="RAHURI">RAHURI</option>
										       <option value="BARSHI">BARSHI</option>
										       <option value="SHIRUR(GHOD-NADI)">SHIRUR(GHOD-NADI)</option>
										       <option value="DAUND">DAUND</option>
										       <option value="SHIRUR KASAR">SHIRUR KASAR</option>
										       <option value="NEWASA">NEWASA</option>
										       <option value="AKLUJ">AKLUJ</option>
										       <option value="KEJ">KEJ</option>
										       <option value="WADAWANI">WADAWANI</option>
										       <option value="INDAPUR">INDAPUR</option>
										       <option value="GEORAI">GEORAI</option>
										       <option value="IEET">IEET</option>
										       <option value="PATHRUD">PATHRUD</option>
										       <option value="SOLAPUR">SOLAPUR</option>
										       <option value="HALGAON">HALGAON</option>
										       <option value="SHELGAON">SHELGAON</option>
										       <option value="PIMPERKHED">PIPERKHED</option>
										       <option value="FAKRABAD">FAKRABAD</option>
										       <option value="DIGHOL">DIGHOL</option>
										       <option value="CHAPADGAON">CHAPADGAON</option>
										       <option value="RAHURI">RAHURI</option>
										       <option value="RAHURI">RAHURI</option>
										                  
										                 
										  </select>
			<br></br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
							Employee _Id:	
									     &nbsp;&nbsp;&nbsp;&nbsp;
							<input type='text' placeholder='Employee_Id' name='Employee_Id' > 
			
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
						
						<input type='text' placeholder='Date' name='Date1'  >
								
								<br>
								<br>
								
								
								
								
								
					<h5> 
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
							
								List_Of_Day_Started_Work:	
															&nbsp;&nbsp;&nbsp;&nbsp;
															
								<textarea  id="Started_Work" name="Started_Work" rows="3" cols="73">	</textarea>
								
								
				<%-- 				<textarea  type='text' id="Started_Work" name="Started_Work" rows="3" cols="73">	</textarea>		--%>
								
								
								<br>
								</br>
					
					
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
								End_Of_The_Day_Completed_Work:		
																	&nbsp;
								
								<textarea   id="Completed_Work" name="Completed_Work" rows="3" cols="73">   </textarea>
						
					</h5>
								<br>
			
			
					<h5> 
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										
									List_Of_Remaining_Work:	
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
									<textarea   id="Remaining_Work" name="Remaining_Work" rows="3" cols="73">  </textarea>
					
					</h5>
					
					<br>
					
					<h5> 
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										
									Other_Work:	
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
									<textarea   id="Other_Work" name="Other_Work" rows="3" cols="73">  </textarea>
					
					</h5>
					
					
					</h5>
					
							<div class="Button">
									<input type="submit" value='Submit'>
									&nbsp;&nbsp;&nbsp;
									
			
							</div>

			
			
			
<h5>&nbsp;&nbsp;&nbsp;Prashant Nawale</h5>		
</form>
</body>
</html>