package Login_Validation;
import java.util.Calendar;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.sql.TIMESTAMP;

/**
 * Servlet implementation class Daily_Work_Login_Validation
 */
@WebServlet("/Daily_Work_Login_Validation")
public class Daily_Work_Login_Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
PrintWriter pw=response.getWriter();
		
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		
		response.setHeader("cache-control","no-cache,no-store,must-revalidate");
		
		
		 TimeZone.setDefault(TimeZone.getTimeZone("GMT"));
		// TIMESTAMP format=new TIMESTAMP();
		SimpleDateFormat format=new SimpleDateFormat("dd-MM-yyyy HH:mm:ss aa");
		Date today4 =new Date() ;
		String date4 = format.format(today4);
				
			
		  try {
	        	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 			
	 			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "prashant");
	 			
	 			System.out.println("Oracle Connection Successful....");
		            
	 			Statement stmt = con.createStatement();
	     
	     	ResultSet rs = stmt.executeQuery("select * from Daily_login where username='"+uname+"' and password='"+password+"'");
	      
	     	String msg ="Login Fail..";
	     	
			if (rs.next())
			{
				 
			//	if("username".equals(uname) && "password".equals(password))
				
					msg="Registration Successful...";
					System.out.print(rs.getString("username") + "\t");
					System.out.print(rs.getString("password") +"\t");
					pw.print("<h1>Thank You"+uname+", For your Subscription.... </h1>");
					pw.println(date4);
					response.sendRedirect("Daily_Report.jsp?msg="+uname+"");
					
				}
				 
			
				else {
					System.out.println("4");
						response.sendRedirect("Daily_Work_Login.jsp?msg=Invalid UserName or password");
					  }
			System.out.println("Login In Daily Report Successfully?msg="+uname+" "+date4+"");
			System.out.println("Print selected rows Successfully");
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}