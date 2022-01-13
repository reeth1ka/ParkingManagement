package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
   private static Connection conn;
   public static Connection getConn(){
	   try {
	   if(conn == null){
			Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/oopproj", "root", "nohacking");
		} catch (SQLException e) { 
			e.printStackTrace();
		}
	   
	   } }catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	   
	   return conn;
}
} 
