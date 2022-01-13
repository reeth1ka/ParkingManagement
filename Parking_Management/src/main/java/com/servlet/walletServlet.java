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
import com.entity.user;

@WebServlet("/add_wallet")
public class walletServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try{
		int id = Integer.parseInt(req.getParameter("id"));
	    int wallet = Integer.parseInt(req.getParameter("wallet"));
	    user u = new user();
		u.setId(id);
		u.setWallet(wallet);
		PSDAO dao = new PSDAO(DBConnect.getConn());	
		boolean f =dao.updatewallet(u);
		HttpSession session = req.getSession();

		if(f){
			session.setAttribute("succMsg", "Wallet Added Successfully");
		    resp.sendRedirect("addwallet.jsp");
		}else{
			session.setAttribute("succMsg", "Something wrong on server");
		    resp.sendRedirect("addwallet.jsp");
		}
		}catch(Exception e){
			e.printStackTrace();
		}}}
		
