package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.user;

public class UserDAO {
    private Connection conn;
    
    public UserDAO(Connection conn) {
    	super();
    	this.conn = conn;
    }
    public Boolean addUser(user u) {
    	boolean f = false;
    	try {
    		
    		String sq1 = "insert into user(name,email,password,role, lastname, username, address, mobileno, carregno) values(?,?,?,?,?,?,?,?,?)";
    		PreparedStatement ps = conn.prepareStatement(sq1);
    		ps.setString(1, u.getName());
    		ps.setString(2, u.getEmail());
    		ps.setString(3, u.getPassword());
    		ps.setString(4, "user");
    		ps.setString(5, u.getLastname());
    		ps.setString(6, u.getUsername());
    		ps.setString(7, u.getAddress());
    		ps.setString(8, u.getMobileno());
    		ps.setString(9, u.getCarregno());
  
    		int i = ps.executeUpdate();
    		if(i==1) {
    			f = true;
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	return f;
    }
	public user login(String em,String psw) {
		user u = null;
		try {
			String sq1 = "select * from user where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sq1);
			ps.setString(1,em);
			ps.setString(2, psw);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				u = new user();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
				u.setRole(rs.getString(5));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return u;
	}

}

