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
import com.entity.PS;

@WebServlet("/update")
public class UpdatePSServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try{
			int id=Integer.parseInt(req.getParameter("id"));
			String place = req.getParameter("place");
			String location = req.getParameter("location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
		PS p = new PS();
		p.setId(id);
		p.setPlace(place);
		p.setLocation(location);
		p.setCategory(category);
		p.setStatus(status);
		
		HttpSession session = req.getSession();
		PSDAO dao = new PSDAO(DBConnect.getConn());	
		boolean f = dao.updatePS(p);
		if(f){
			session.setAttribute("succMsg", "Parking Spot Updated Successfully");
		    resp.sendRedirect("view_ps.jsp");
		}else{
			session.setAttribute("succMsg", "Something wrong on server");
		    resp.sendRedirect("view_ps.jsp");
		}
		
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
