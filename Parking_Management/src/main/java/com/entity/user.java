package com.entity;

public class user {
 private int id;
 private String name;
 private String lastname;
 private String username;
 private String carregno;
 private String mobileno;
 private String email;
 private String password;
 private String address;
 private String role;
 private int wallet;


public user() {
	super();
	// TODO Auto-generated constructor stub
}

public user(String name, String email, String password, String role, String lastname, String username,
		String address, String mobileno, String carregno) {
	super();
	this.name = name;
	this.lastname = lastname;
	this.username = username;
	this.carregno = carregno;
	this.mobileno = mobileno;
	this.email = email;
	this.password = password;
	this.address = address;
	this.role = role;
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
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getCarregno() {
	return carregno;
}
public void setCarregno(String carregno) {
	this.carregno = carregno;
}
public String getMobileno() {
	return mobileno;
}
public void setMobileno(String mobileno) {
	this.mobileno = mobileno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}

public int getWallet() {
	return wallet;
}

public void setWallet(int wallet) {
	this.wallet = wallet;
}

public int getDebitWallet(int price){
	return wallet - price;
	
}

 
}
 
 
 
