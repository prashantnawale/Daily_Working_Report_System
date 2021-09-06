package Show_Validation;

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
 * Servlet implementation class Show_Monthly_Report
 */
@WebServlet("/Show_Monthly_Report")
public class Show_Monthly_Report extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
try {
			
			response.setContentType("text/html");
			
			/* Class.forName("com.mysql.jdbc.Driver");
 			
 			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "root");*/
 			
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","prashant");
			
			PreparedStatement ps=con.prepareStatement("select * from monthly_report1");
			
			ResultSet rs=ps.executeQuery();
			
			PrintWriter pw=response.getWriter();
			
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
					+ "Monthly_Report</h1>"
					+ " <a href='Type.jsp'> Back</a>"
					+ "</centre>"
					+ "<hr>"
					+ "<br>"
					+ "<body>"
					+ "<table border='1'>"
					+ " <tr style='background-color:red;color:aliceblue;font-weight:bold'>"
	
					+ "<td> Branch_Name </td>"
					
					+ "<td> Employee_Name </td>"

					
					+ "<td> Date </td>"
					+ "<td> List_Of_Month_Started_Work</td>"
					+ "<td> List_Of_Month_End_Completed_Work </td>"
					+ "<td> List_Of_Month_End_Remaining_Work </td>"
					+ "<td> Other_Work </td>"
					

					+ "</tr>");
			
			
			while(rs.next())
			
			{
				pw.println("<tr>"
						+"<td>"+rs.getString(1)+"</td>"						
						+"<td>"+rs.getString(2)+"</td>"
						+"<td>"+rs.getString(3)+"</td>"
						+"<td>"+rs.getString(4)+"</td>"
						+"<td>"+rs.getString(5)+"</td>"
						+"<td>"+rs.getString(6)+"</td>"
						+"<td>"+rs.getString(7)+"</td>"
					
						+"</tr>");
			}
			pw.println("</table></body></html>");
		}catch (Exception e) 
		{
			e.printStackTrace();
					// TODO: handle exception
				}
		
		
	}

}
