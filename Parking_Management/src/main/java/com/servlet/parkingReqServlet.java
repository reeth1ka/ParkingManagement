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
import com.entity.parking_req;

@WebServlet("/parking_request")
public class parkingReqServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try{
		String place = req.getParameter("place");
		String checkintime = req.getParameter("checkin_time");
		String hours = req.getParameter("hours");
		String category = req.getParameter("category");
		parking_req pr = new parking_req();
		pr.setPlace(place);
		pr.setCheckintime(checkintime);
		pr.setHours(hours);
		pr.setCategory(category);
		HttpSession session = req.getSession();
		PSDAO dao = new PSDAO(DBConnect.getConn());	
		boolean f = dao.addPR(pr);
		if(f){
			session.setAttribute("succMsg", "Parking Request Raised Successfully");
		    resp.sendRedirect("home.jsp");
		}else{
			session.setAttribute("succMsg", "Something wrong on server");
		    resp.sendRedirect("home.jsp");
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		}

	
	}

