package com.entity;

public class worker {
	private int id;
	 private String name;
	 private String password;
	 private String rating;
	 private String category;
	 
	 
	public worker(String name, String password, String rating, String category) {
		super();
		this.name = name;
		this.password = password;
		this.rating = rating;
		this.category = category;
	}
	public worker() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	 
	 
}
