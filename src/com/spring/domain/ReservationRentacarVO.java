package com.spring.domain;

import java.sql.Date;

public class ReservationRentacarVO {

	private int no;				// 인덱스
	private	String region;		// 지역
	private	String city;		// 도시
	private	String productName; // 상품명
	private	Date checkin;		// 체크인일자
	private	Date checkout;		// 체크아웃일자
	private	String cartype;		// 차종류
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
	public Date getCheckout() {
		return checkout;
	}
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}
	public String getCartype() {
		return cartype;
	}
	public void setCartype(String cartype) {
		this.cartype = cartype;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	@Override
	public String toString() {
		return "ReservationRentacarVO [no=" + no + ", region=" + region + ", city=" + city + ", productName="
				+ productName + ", checkin=" + checkin + ", checkout=" + checkout + ", cartype=" + cartype
				+ ", remarks=" + remarks + "]";
	}

}