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

@WebServlet("/delete")
public class DeletePSServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
  try{
	  int id = Integer.parseInt(req.getParameter("id"));
  PSDAO dao = new PSDAO(DBConnect.getConn());

  boolean f = dao.deletePS(id);
  HttpSession session = req.getSession();
	
	if(f){
		session.setAttribute("succMsg", "Parking Spot Deleted Successfully");
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
