package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class otpServlet
 */
@WebServlet("/otpServlet")
public class otpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String otpEntered=request.getParameter("otpid");
		
		RequestDispatcher rd;
		PreparedStatement stmt;
		Connection con;
		ResultSet rs;
		HttpSession session = request.getSession();
		int count=0;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproj", "root", "nohacking");
			stmt=con.prepareStatement("select otp from otpverify", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs=stmt.executeQuery();
			rs.next();
			if(otpEntered.equals(rs.getString("otp"))){
				count=1;
			}
			
			String realOTP=rs.getString("otp");
			stmt=con.prepareStatement("delete from otpverify where otp='"+realOTP+"'");
			stmt.executeUpdate();
			
			if(count==1){
				
				response.sendRedirect("login.jsp");
				session.setAttribute("succReg", "Phone number verified! Registration successful.");
				count=0;
			}
			else{
				
				/*stmt=con.prepareStatement("delete from login where otp='"+realOTP+"'");
				stmt.executeUpdate();*/
			//	request.setAttribute("status","Incorrect OTP Entered! Failed to sign up! Please try again.");
				
				response.sendRedirect("signup.jsp");
				session.setAttribute("errReg", "Incorrect OTP. Please try again.");
				/*rd=request.getRequestDispatcher("signup.jsp");
				rd.forward(request, response);*/
			}
		} 
		
		catch (Exception e){
			e.printStackTrace();
		}
	}
}
