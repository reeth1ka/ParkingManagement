package com.entity;

public class PS {
 private int id;
 private String place;
 private String location;
 private String category;
 private String status;
 private String pdate;
public PS() {
	super();
	// TODO Auto-generated constructor stub
}
public PS(String place, String location, String category, String status, String pdate) {
	super();
	this.place = place;
	this.location = location;
	this.category = category;
	this.status = status;
	this.pdate = pdate;
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
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getPdate() {
	return pdate;
}
public void setPdate(String pdate) {
	this.pdate = pdate;
}





}
