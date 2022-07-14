package com.spring.domain;

import java.sql.Date;
import java.sql.Timestamp;

public class TravelerVO{

	private int product_code;			// 상품코드
	private int idx;					// pk 인덱스
	private int no;						// 인덱스
	private	String productName;			// 상품명
	private	Date departure_date;		// 출발일자
	private	Date arrival_date;			// 도착일자
	private	String booker;				// 예약자
	private	String traveler;			// 여행자
	private	String traveler_gender;		// 여행자 성별
	private	String traveler_firstname;	// 여행자 성
	private	String traveler_lastname;	// 여행자 이름
	private	String traveler_phone;		// 여행자 연락처
	private Timestamp regDate;			// 등록일자
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Date getDeparture_date() {
		return departure_date;
	}
	public void setDeparture_date(Date departure_date) {
		this.departure_date = departure_date;
	}
	public Date getArrival_date() {
		return arrival_date;
	}
	public void setArrival_date(Date arrival_date) {
		this.arrival_date = arrival_date;
	}
	public String getBooker() {
		return booker;
	}
	public void setBooker(String booker) {
		this.booker = booker;
	}
	public String getTraveler() {
		return traveler;
	}
	public void setTraveler(String traveler) {
		this.traveler = traveler;
	}
	public String getTraveler_gender() {
		return traveler_gender;
	}
	public void setTraveler_gender(String traveler_gender) {
		this.traveler_gender = traveler_gender;
	}
	public String getTraveler_firstname() {
		return traveler_firstname;
	}
	public void setTraveler_firstname(String traveler_firstname) {
		this.traveler_firstname = traveler_firstname;
	}
	public String getTraveler_lastname() {
		return traveler_lastname;
	}
	public void setTraveler_lastname(String traveler_lastname) {
		this.traveler_lastname = traveler_lastname;
	}
	public String getTraveler_phone() {
		return traveler_phone;
	}
	public void setTraveler_phone(String traveler_phone) {
		this.traveler_phone = traveler_phone;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "TravelerVO [product_code=" + product_code + ", idx=" + idx + ", no=" + no + ", productName="
				+ productName + ", departure_date=" + departure_date + ", arrival_date=" + arrival_date + ", booker="
				+ booker + ", traveler=" + traveler + ", traveler_gender=" + traveler_gender + ", traveler_firstname="
				+ traveler_firstname + ", traveler_lastname=" + traveler_lastname + ", traveler_phone=" + traveler_phone
				+ ", regDate=" + regDate + "]";
	}

}
