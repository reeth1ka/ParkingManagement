package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.PSDAO;
import com.entity.user;

import otp.sendConMsg;

@WebServlet("/confirm_booking")
public class ConfirmBookingServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
  try{ 
	  
	  int id = Integer.parseInt(req.getParameter("id"));	  
      int  price = Integer.parseInt(req.getParameter("price"));
      String number = req.getParameter("number");
      int balance = 500 - price;
      PSDAO dao = new PSDAO(DBConnect.getConn());
      user u = new user();
      u.setId(id);
      u.setWallet(balance);
	  boolean f = dao.updateuser(u);
	  HttpSession session = req.getSession();
       sendConMsg obj = new sendConMsg();
       obj.SendMsg(price, number);
		if(f){
			session.setAttribute("bookingmsg", "Parking Spot Booked Successfully");
		    resp.sendRedirect("home.jsp");
		}else{
			session.setAttribute("bookingmsg", "Something wrong on server");
		    resp.sendRedirect("home.jsp");
		}
	  
  }catch(Exception e){
	  e.printStackTrace();
  }
}}
