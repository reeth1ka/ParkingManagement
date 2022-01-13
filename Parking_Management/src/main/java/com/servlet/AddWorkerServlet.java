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
import com.entity.worker;

@WebServlet("/add_wks")
public class AddWorkerServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try{
			String name = req.getParameter("name");
			String password = req.getParameter("password");
			String rating = req.getParameter("rating");
			String category = req.getParameter("category");
			
			worker w= new worker();
			w.setName(name);
			w.setPassword(password);
			w.setRating(rating);
			w.setCategory(category);
			HttpSession session = req.getSession();
			PSDAO dao = new PSDAO(DBConnect.getConn());	
			boolean f = dao.addwks(w);
	        if(f){
		session.setAttribute("workerAddedmsg", "Worker Posted Successfully");
	    resp.sendRedirect("add_wks.jsp");
	}else{
		session.setAttribute("workerAddedmsg", "Something wrong on server");
	    resp.sendRedirect("add_wks.jsp");
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
