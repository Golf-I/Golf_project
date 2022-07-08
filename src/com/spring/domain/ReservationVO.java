package com.spring.domain;

import java.sql.Date;

public class ReservationVO {

	private String sortation;
	private	String id;
	private	String productName;
	private	String region;
	private	String city;
	private	String departure_date;
	private	String arrival_date;
	/*
	 * private Date departure_date; 
	 * private Date arrival_date;
	 */	
	private	int personnel;
	private	String booker;
	private	int booker_phone;
	private	String booker_email;
	private	String booker_gender;
	private	int product_price;
	private	int day_park;
	private	int day_il;
	private	String memo;
	private	int option_singleRoom;
	private	int option_addVehicle;
	private	int option_businessUpgrade;
	private	int total_price;
	private	Date regDate;
	
	public String getSortation() {
		return sortation;
	}
	public void setSortation(String sortation) {
		this.sortation = sortation;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDeparture_date() {
		return departure_date;
	}
	public void setDeparture_date(String departure_date) {
		this.departure_date = departure_date;
	}
	public String getArrival_date() {
		return arrival_date;
	}
	public void setArrival_date(String arrival_date) {
		this.arrival_date = arrival_date;
	}
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	public String getBooker() {
		return booker;
	}
	public void setBooker(String booker) {
		this.booker = booker;
	}
	public int getBooker_phone() {
		return booker_phone;
	}
	public void setBooker_phone(int booker_phone) {
		this.booker_phone = booker_phone;
	}
	public String getBooker_email() {
		return booker_email;
	}
	public void setBooker_email(String booker_email) {
		this.booker_email = booker_email;
	}
	public String getBooker_gender() {
		return booker_gender;
	}
	public void setBooker_gender(String booker_gender) {
		this.booker_gender = booker_gender;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getDay_park() {
		return day_park;
	}
	public void setDay_park(int day_park) {
		this.day_park = day_park;
	}
	public int getDay_il() {
		return day_il;
	}
	public void setDay_il(int day_il) {
		this.day_il = day_il;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getOption_singleRoom() {
		return option_singleRoom;
	}
	public void setOption_singleRoom(int option_singleRoom) {
		this.option_singleRoom = option_singleRoom;
	}
	public int getOption_addVehicle() {
		return option_addVehicle;
	}
	public void setOption_addVehicle(int option_addVehicle) {
		this.option_addVehicle = option_addVehicle;
	}
	public int getOption_businessUpgrade() {
		return option_businessUpgrade;
	}
	public void setOption_businessUpgrade(int option_businessUpgrade) {
		this.option_businessUpgrade = option_businessUpgrade;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "ReservationVO [sortation=" + sortation + ", id=" + id + ", productName=" + productName + ", region="
				+ region + ", city=" + city + ", departure_date=" + departure_date + ", arrival_date=" + arrival_date
				+ ", personnel=" + personnel + ", booker=" + booker + ", booker_phone=" + booker_phone
				+ ", booker_email=" + booker_email + ", booker_gender=" + booker_gender + ", product_price="
				+ product_price + ", day_park=" + day_park + ", day_il=" + day_il + ", memo=" + memo
				+ ", option_singleRoom=" + option_singleRoom + ", option_addVehicle=" + option_addVehicle
				+ ", option_businessUpgrade=" + option_businessUpgrade + ", total_price=" + total_price + ", regDate="
				+ regDate + "]";
	}
	
}