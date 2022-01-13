package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.PS;
import com.entity.hours;
import com.entity.parking_req;
import com.entity.user;
import com.entity.worker;

public class PSDAO {

	private Connection conn;

	public PSDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addPS(PS p){
		boolean f=false;
		try{
			String sql = "insert into parking_spots(place,location,category,status) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getPlace());
			ps.setString(2, p.getLocation());
			ps.setString(3, p.getCategory());
			ps.setString(4, p.getStatus());
			
		int i = ps.executeUpdate();
		if(i==1){
			f = true;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	return f;
	}
	public boolean addPR(parking_req pr){
		boolean f=false;
		try{
			String sql = "insert into parking_req(place,checkintime,hours,category) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, pr.getPlace());
			ps.setString(2, pr.getCheckintime());
			ps.setString(3, pr.getHours());
			ps.setString(4, pr.getCategory());
			
		int i = ps.executeUpdate();
		if(i==1){
			f = true;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	return f;
	}

	public boolean addwks(worker w){
		boolean f=false;
		try{
			String sql = "insert into workers(name, rating, category, password) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, w.getName());
			ps.setString(2, w.getRating());
			ps.setString(3, w.getCategory());
			ps.setString(4, w.getPassword());
			
		int i = ps.executeUpdate();
		if(i==1){
			f = true;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	return f;
	}
	public boolean addhours(hours h){
		boolean f=false;
		try{
			String sql = "insert into hours(hrs) values(?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, h.getHrs());
			
		int i = ps.executeUpdate();
		if(i==1){
			f = true;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	return f;
	}
	public List<PS> getAllPS(){
		List<PS> list = new ArrayList<PS>();
	   PS p = null;
	try{
		String sql = "select * from parking_spots order by id desc";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		p = new PS();
		p.setId(rs.getInt(1));
		p.setPlace(rs.getString(2));
		p.setLocation(rs.getString(3));
		p.setCategory(rs.getString(4));
		p.setStatus(rs.getString(5));
		p.setPdate(rs.getTimestamp(6) + "");
		list.add(p);
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	return list;
	}
	public List<parking_req> getAllPR(){
		List<parking_req> list = new ArrayList<parking_req>();
	   parking_req pr = null;
	try{
		String sql = "select * from parking_req order by id desc";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		pr = new parking_req();
		pr.setId(rs.getInt(1));
		pr.setPlace(rs.getString(2));
		pr.setCategory(rs.getString(3));
		pr.setCheckintime(rs.getString(4));
		pr.setHours(rs.getString(5));
		list.add(pr);
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	return list;
	}
	public List<worker> getAllWorkers(){
		List<worker> list = new ArrayList<worker>();
	   worker w = null;
	try{
		String sql = "select * from workers order by id desc";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		w = new worker();
		w.setId(rs.getInt(1));
		w.setName(rs.getString(2));
		w.setRating(rs.getString(3));
		w.setCategory(rs.getString(4));
		
		list.add(w);
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	return list;
	}
	public List<PS> getAllPSForUser(){
		List<PS> list = new ArrayList<PS>();
		   PS p = null;
		try{
			String sql = "select * from parking_spots where status=? order by id desc";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, "Active");
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			p = new PS();
			p.setId(rs.getInt(1));
			p.setPlace(rs.getString(2));
			p.setLocation(rs.getString(3));
			p.setCategory(rs.getString(4));
			p.setStatus(rs.getString(5));
			p.setPdate(rs.getTimestamp(6) + "");
		    list.add(p);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	public List<PS> getPSAndPlaceAndCat(String place, String cat){
		List<PS> list = new ArrayList<PS>();
		PS p = null;
		try{
			String sql = "select * from parking_spots where place=? and category=? order by id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, place);
			ps.setString(2, cat);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				p = new PS();
				p.setId(rs.getInt(1));
				p.setPlace(rs.getString(2));
				p.setLocation(rs.getString(3));
				p.setCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setPdate(rs.getTimestamp(6) + "");
			    list.add(p);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
public PS getPSById(int id){
	 PS p = null;
		try{
			String sql = "select * from parking_spots where id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			p = new PS();
			p.setId(rs.getInt(1));
			p.setPlace(rs.getString(2));
			p.setLocation(rs.getString(3));
			p.setCategory(rs.getString(4));
			p.setStatus(rs.getString(5));
			p.setPdate(rs.getTimestamp(6) + "");
		
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		return p;
		   
		}
public worker getWkrByCat(String category){
	worker w = null;
	try{
		String sql = "select * from workers where category=?";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, category);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		w = new worker();
		
		w.setId(rs.getInt(1));
		w.setName(rs.getString(2));
		w.setRating(rs.getString(3));
		w.setCategory(rs.getString(4));
	
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	return w;
	  
	}
	
	public boolean updatePS(PS p){
		boolean f=false;
		try{
			String sql = "update parking_spots set place=?,location=?,category=?,status=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getPlace());
			ps.setString(2, p.getLocation());
			ps.setString(3, p.getCategory());
			ps.setString(4, p.getStatus());
			ps.setInt(5, p.getId());
		int i = ps.executeUpdate();
		if(i==1){
			f = true;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	return f;
	}
	public boolean updatewallet(user u){
		boolean f=false;
		try{
			String sql = "update user set wallet=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, u.getWallet());
			ps.setInt(2, u.getId());
			int i = ps.executeUpdate();
		if(i==1){
			f = true;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	return f;
	}
	public boolean updateuser(user u){
		boolean f= false;
		try{
			String sql = "update user set wallet=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, u.getWallet());
			ps.setInt(2, u.getId());
			int i = ps.executeUpdate();
		if(i==1){
			f = true;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	return f;
	}
	public boolean deletePS(int id){
		boolean f=false;
		try{
			String sql = "delete from parking_spots where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			int i=ps.executeUpdate();
			if(i==1){
				f=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return f;
	}
}