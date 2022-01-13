package com.entity;

public class hours{
 private int hrs;
 private int balance;
 
public hours() {
	super();
	// TODO Auto-generated constructor stub
}

public hours(int hrs) {
	super();
	this.hrs = hrs;
}

public int getHrs() {
	return hrs;
}

public void setHrs(int hrs) {
	this.hrs = hrs;
}
public int getPrice(int hrs){
	balance=  hrs*25 + 100;
	return balance;
}
}
