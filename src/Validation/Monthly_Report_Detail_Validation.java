package Validation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Monthly_Report_Detail_Validation
 */
@WebServlet("/Monthly_Report_Detail_Validation")
public class Monthly_Report_Detail_Validation extends HttpServlet {
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
		String Started_Work= request.getParameter("Started_Work");
		String Completed_Work= request.getParameter("Completed_Work");
		String Remaining_Work = request.getParameter("Remaining_Work");
		String Other_Work = request.getParameter("Other_Work");
		
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system","prashant");
			
 			System.out.println("Oracle Connection Successful....");

 			System.out.println("1");
 			
 			PreparedStatement pst = con.prepareStatement("insert into monthly_report1"
					+ "(branch_name,employee_id,employee_post,employee_name,date1,started_work,completed_work,remaining_work,Other_Work)"
					+"values(?,?,?,?,?,?,?,?,?)");  
 			
 			System.out.println("2");
	

     	
		pst.setString(1,Branch_Name);
		pst.setString(2,Employee_Id);
		pst.setString(3,Post);
		pst.setString(4,Employee_Name);
		pst.setString(5,Date);
		pst.setString(6,Started_Work); 
		pst.setString(7,Completed_Work);
		pst.setString(8,Remaining_Work);
		pst.setString(9,Other_Work);
		
		
		System.out.println("3");		
		
	//	 int i=pst.executeUpdate();
		
		int i=pst.executeUpdate();
		 
			System.out.println("4");	
  
  {
	  response.sendRedirect("Type.jsp");
  }
  
	System.out.println("6");	
   
  System.out.println("Add Monthly Report Successfully  ?msg="+Branch_Name+"  "+Employee_Name+"");
       
   //    System.out.println("Add Detail Successfully   Name="+uname  +Pass  +CPass  +Id);
       
		System.out.println("Execute Successfully");
		
		con.close();
		
	}
	catch(Exception ex) {
		ex.printStackTrace();
	}
		
		
	}

}