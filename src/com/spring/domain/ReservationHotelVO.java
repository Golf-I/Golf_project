package com.spring.domain;

import java.sql.Date;

public class ReservationHotelVO {

	private int no;				// 인덱스
	private	String region;		// 지역
	private	String city;		// 도시
	private	String hotel;		// 호텔
	private	String productName;	// 상품명
	private	Date checkin;		// 체크인일자
	private	Date checkout;		// 체크아웃일자
	private	int day_park;		// N박
	private	int day_il;			// N일
	private	String roomtype;	// 룸타입
	private	int personnel;		// 인원수
	private	String remarks;		// 비고
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getHotel() {
		return hotel;
	}
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Date getCheckin() {
		return checkin;
	}
	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}
	public Date getCheckout() {
		return checkout;
	}
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
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
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	@Override
	public String toString() {
		return "ReservationHotelVO [no=" + no + ", region=" + region + ", city=" + city + ", hotel=" + hotel
				+ ", productName=" + productName + ", checkin=" + checkin + ", checkout=" + checkout + ", day_park="
				+ day_park + ", day_il=" + day_il + ", roomtype=" + roomtype + ", personnel=" + personnel + ", remarks=" + remarks + "]";
	}
	
}