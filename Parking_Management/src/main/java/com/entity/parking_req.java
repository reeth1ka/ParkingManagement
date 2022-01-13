package com.entity;

public class parking_req {
  private int id;
  private String place;
  private String checkintime;
  private String category;
  private String hours;
public parking_req() {
	super();
	// TODO Auto-generated constructor stub
}


public parking_req(String place, String checkintime, String category, String hours) {
	super();
	this.place = place;
	this.checkintime = checkintime;
	this.category = category;
	this.hours = hours;
}


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPlace() {
	return place;
}
public void setPlace(String place) {
	this.place = place;
}
public String getCheckintime() {
	return checkintime;
}
public void setCheckintime(String checkintime) {
	this.checkintime = checkintime;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getHours() {
	return hours;
}
public void setHours(String hours) {
	this.hours = hours;
}
  
  
  
  
  
}
