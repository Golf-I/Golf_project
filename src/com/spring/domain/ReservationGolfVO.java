package com.spring.domain;

import java.sql.Date;

public class ReservationGolfVO {

	private int no;				// 인덱스
	private	String region;		// 지역
	private	String city;		// 도시
	private	String productName; // 상품명
	private	Date checkin;		// 체크인일자
	private	String golftype;	// 골프장명
	private	int tee_off_time;	// 티업타임
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
	public String getGolftype() {
		return golftype;
	}
	public void setGolftype(String golftype) {
		this.golftype = golftype;
	}
	public int getTee_off_time() {
		return tee_off_time;
	}
	public void setTee_off_time(int tee_off_time) {
		this.tee_off_time = tee_off_time;
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
		return "ReservationGolfVO [no=" + no + ", region=" + region + ", city=" + city + ", productName=" + productName
				+ ", checkin=" + checkin + ", golftype=" + golftype + ", tee_off_time=" + tee_off_time + ", personnel="
				+ personnel + ", remarks=" + remarks + "]";
	}
	
}