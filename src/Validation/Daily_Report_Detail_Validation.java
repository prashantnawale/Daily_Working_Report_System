package Validation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Daily_Report_Detail_Validation
 */
@WebServlet("/Daily_Report_Detail_Validation")
public class Daily_Report_Detail_Validation extends HttpServlet {
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
		String Date1= request.getParameter("Date1");
		String Started_Work= request.getParameter("Started_Work");
		String Completed_Work= request.getParameter("Completed_Work");
		String Remaining_Work = request.getParameter("Remaining_Work");
		String Other_Work = request.getParameter("Other_Work");
		
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system","prashant");
			
 			System.out.println("Oracle Connection Successful....");

 			System.out.println("1");
 			
 			PreparedStatement pst = con.prepareStatement("insert into Daily_report1"
					+ "(branch_name,employee_id,employee_post,employee_name,date1,started_work,completed_work,remaining_work,Other_Work)"
					+"values(?,?,?,?,?,?,?,?,?)");  
 			
 			System.out.println("2");
	

 		   
 			
 			
		pst.setString(1,Branch_Name);
		pst.setString(2,Employee_Id);
		pst.setString(3,Post);
		pst.setString(4,Employee_Name);
		pst.setString(5,Date1);
		pst.setString(6,Started_Work); 
		pst.setString(7,Completed_Work);
		pst.setString(8,Remaining_Work);
		pst.setString(9,Other_Work);
		
		HttpSession session=request.getSession();
		  session.setAttribute("Branch_Name",Branch_Name);
		  session.setAttribute("Employee_Id",Employee_Id);
		  session.setAttribute("Post",Post);
		  session.setAttribute("Employee_Name",Employee_Name);
		  session.setAttribute("Date",Date1);
		 
		
		
		System.out.println("3");		
		
	//	 int i=pst.executeUpdate();
		
		int i=pst.executeUpdate();
		 
			System.out.println("4");	
  
  
			 {
				  response.sendRedirect("Type.jsp");
			  }
			  
	System.out.println("6");	
   
  System.out.println("Add Daily Report Successfully  ?msg="+Branch_Name+"  "+Employee_Name+"   "+Employee_Id+"");
       
   //    System.out.println("Add Detail Successfully   Name="+uname  +Pass  +CPass  +Id);
       
		System.out.println("Execute Successfully");
		
		con.close();
		
	}
	catch(Exception ex) {
		ex.printStackTrace();
	}
		
	}
}
