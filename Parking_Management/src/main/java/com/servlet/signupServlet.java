package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.user;

import otp.OTP;
import otp.sendOTP;

@WebServlet("/signupServlet")
public class signupServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;   
    public signupServlet() {
    	super();
    	
    }

	/**

	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)

	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.getWriter().append("Served at: ").append(request.getContextPath());
    }

	/**

	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)

	 */
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
	try {
		
		String name = req.getParameter("name");
		String lastname = req.getParameter("lastname");
		String username = req.getParameter("username");
		String carregno =  req.getParameter("carregno");
		String mobileno = req.getParameter("mobileno");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String address = req.getParameter("address");
		UserDAO dao = new UserDAO(DBConnect.getConn());
		user u = new user(name, email, password, "user", lastname, username, address, mobileno, carregno);
		dao.addUser(u);
		PreparedStatement stmt2;
		Connection con;
		RequestDispatcher rd;
		OTP otp=new OTP();
		String otpmessage= otp.generateOTP(6);
		sendOTP sotp=new sendOTP();
		sotp.SendOTP(otpmessage,mobileno);
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproj", "root", "nohacking");
			String sql2="insert into otpverify(mobileNumber ,otp) values(?,?)";
			
	
			
			stmt2=con.prepareStatement(sql2);
			stmt2.setString(1, mobileno);
			stmt2.setString(2, otpmessage);
			stmt2.executeUpdate();
			
			rd= req.getRequestDispatcher("phoneVerify.jsp");
			rd.forward(req, resp);
	

			
		} 
		catch (Exception e){
			e.printStackTrace();
		}
	}catch(Exception e){
		e.printStackTrace();
	}
}}
		
		
		
		
	/*	UserDAO dao = new UserDAO(DBConnect.getConn());
		user u = new user(name,lastname, username, carregno, mobileno, email, password, address,"User");*/
		/*boolean f = dao.addUser(u);*/
		/*HttpSession session = req.getSession();
		if (f) {
			session.setAttribute("succMsg","Registration Successful");
			resp.sendRedirect("register.jsp");
			
		}
		else {
			session.setAttribute("succMsg","Something wrong on server");
			resp.sendRedirect("signup.jsp");
		}
	}catch (Exception e) {
		e.printStackTrace();*/
/*	}*/
/*}*/


