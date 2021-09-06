package Validation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Search_Daily_Report_Detail_Validation
 */
@WebServlet("/Search_Daily_Report_Detail_Validation")
public class Search_Daily_Report_Detail_Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		 PrintWriter pw=response.getWriter();
			
		 	String Branch_Name =request.getParameter("Branch_Name");
			String Employee_Id =request.getParameter("Employee_Id");
			String Post =request.getParameter("Post");
			String Employee_Name =request.getParameter("Employee_Name");
			String Date= request.getParameter("Date");
			
			  try {
				  
					/* Class.forName("com.mysql.jdbc.Driver");
		 			
		 			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "root");*/
		 			
				  
		        	 Class.forName("oracle.jdbc.driver.OracleDriver");
		 			
		 			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "prashant");
		 			
		 			System.out.println("Oracle Connection Successful....");
			            
		 			
		 			
		 			System.out.println("1");
		 			
		 			PreparedStatement ps=con.prepareStatement("select * from Daily_Report1 where  Branch_Name='"+Branch_Name+"' or Employee_Id='"+Employee_Id+"' or Employee_Post='"+Post+"' or Employee_Name='"+Employee_Name+"' or Date1='"+Date+"'");
		     	
		 	//		PreparedStatement ps=con.prepareStatement("select * from (select * from employeedetail where id='"+employee_id+"' or ( Branch_Name!=lower('"+Branch_Name+"') or FIRST_NAME!= LOWER('"+employee_firstname+"') or MIDDEL_NAME!= LOWER('"+employee_lastname+"')) or( Branch_Name!=upper('"+Branch_Name+"')  FIRST_NAME!= upper('"+employee_firstname+"') or MIDDEL_NAME!= upper('"+employee_lastname+"')))");
		 			
		 		//	PreparedStatement ps=con.prepareStatement("select * from(select * from employeedetail where id='"+employee_id+"' or Branch_Name!=lower('"+Branch_Name+"') or FIRST_NAME!= LOWER(employee_firstname) or MIDDEL_NAME!= LOWER(employee_lastname) or  FIRST_NAME!= upper(employee_firstname) or MIDDEL_NAME!= upper(employee_lastname)"'" ) 
		 			
		 			System.out.println("2");
		     	
		     	ResultSet rs=ps.executeQuery();
				
				
				
				pw.println("<html>"
						+ "<centre>"
						+ "&nbsp;"
						+ "<h1 style='color:red;'>"
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
						
						
						+ "Search_Employee Daily_Report</h1>"
						+ " <a href='Verify_Work.jsp'> Back</a>"
						+ "</centre>"
						+ "<hr>"
						+ "<br>"
						+ "<body>"
						
						+ "<table border='1'> <tr style='background-color:red;color:aliceblue;font-weight:bold'>"
						
						+"<td>Branch_Name</td>"
						+ "<td> Employee_Id </td>"
						+ "<td> job_post </td>"
						+ "<td> Employee_name </td>"						
						+ "<td>Date</td>"
						+ "<td> List_Of_Day_Started_Work </td>"
						+ "<td> List_Of_Day_End_Completed_Work </td>"
						+ "<td> List_Of_Remaining_Work </td>"
						+ "<td> Other_Work</td>"						
						+ "<td></td>"
						+ "</tr>");
				
				
				while(rs.next())
				
				{
					pw.println("<tr>"
							+ "<td>"+rs.getString(1)+"</td>"						
							+ "<td>"+rs.getString(2)+"</td>"
							+"<td>"+rs.getString(3)+"</td>"
							+"<td>"+rs.getString(4)+"</td>"
							+"<td>"+rs.getString(5)+"</td>"
							+"<td>"+rs.getString(6)+"</td>"
							+"<td>"+rs.getString(7)+"</td>"
							+"<td>"+rs.getString(8)+"</td>"
							+"<td>"+rs.getString(9)+"</td>"
							+"</tr>");
				}
				pw.println("</table></body></html>");
			}catch (Exception e) 
			{
				e.printStackTrace();
				
				
				System.out.println("Search Employee Detail Successfully?msg=   "+Employee_Name+"  "+Employee_Id+"");
				System.out.println("Search Employee"+Employee_Name +Branch_Name +Date);
			
		}

	}
	}

