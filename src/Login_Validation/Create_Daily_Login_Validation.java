package Login_Validation;

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

/**
 * Servlet implementation class Create_Daily_Login_Validation
 */
@WebServlet("/Create_Daily_Login_Validation")
public class Create_Daily_Login_Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		PrintWriter pw=response.getWriter();
		
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String confirmpassword=request.getParameter("confirmpassword");
        
        
         try {
        	 Class.forName("oracle.jdbc.driver.OracleDriver");
 			
 			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "prashant");
 			
 			System.out.println("Oracle Connection Successful....");
	            
               
         PreparedStatement ps = con.prepareStatement("insert into Daily_login values(?,?,?,?,?)");   //  SELECT * from "+createAccount+" WHERE id=?");
         
           ps.setString(1, firstname);
           ps.setString(2, lastname);
           ps.setString(3, uname);
           ps.setString(4, pass);
           ps.setString(5, confirmpassword);
          	            
          //int i=ps.executeUpdate();
           //if we write above executeUpdate() here then code check the password and confirm password is is equal or not but it always insert in database if it is not same also
           
           String msg ="password Not Match";
           
           if(pass .equals(confirmpassword))
           {
        	   int i=ps.executeUpdate();
        	   //if we write above executeUpdate() method here then it insert into database ony if password and confirmpassword id same
        	   
           if(i>0)  
               pw.print("You are successfully registered..."); 
           
           response.sendRedirect("Daily_Work_Login.jsp");
           }
           else {
        	   pw.print("password and confirm password not same");
        	   response.sendRedirect("Create_Daily_Work_Login.jsp?msg=Password and ConfirmPassword Not Match");
           }
       
       }
          catch (Exception ex)
          {
               ex.printStackTrace();
          }  
          pw.close();  
	}

}
