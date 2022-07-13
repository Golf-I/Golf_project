package com.spring.domain;

import java.sql.Date;
import java.util.List;

public class ReservationVO {

	private int product_code;			// 상품코드
	private int idx;					// 인덱스
	private String sortation;			// 분류
	private	String id;					// 예약자 아이디
	private	String productName;			// 상품명
	private	String region;				// 지역
	private	String city;				// 도시
	private	String departure_date;		// 출발일자
	private	String arrival_date;		// 도착일자
	/*
	 * private Date departure_date; 
	 * private Date arrival_date;
	 */	
	private	int personnel;				// 인원수
	private	String booker;				// 예약자명
	private	String booker_phone;		// 예약자 연락처
	private	String booker_email;		// 예약자 이메일
	private	String booker_gender;		// 예약자 성별
	private	int product_price;			// 상품 가격
	private	int day_park;				// N박
	private	int day_il;					// N일
	private	String memo;				// 비고
	private	int option_singleRoom;		// 싱글룸 옵션
	private	int option_addVehicle;		// 차량 옵션
	private	int option_businessUpgrade;	// 비즈니스업그레이드 옵션
	private	int total_price;			// 총 결제금액
	private	Date regDate;				// 등록일자
	
	private	String traveler;			// 여행자
	private	String traveler_gender;		// 여행자 성별
	private	String traveler_firstname;	// 여행자 성
	private	String traveler_lastname;	// 여행자 이름
	private	String traveler_phone;		// 여행자 연락처
	
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
	public String getBooker_phone() {
		return booker_phone;
	}
	public void setBooker_phone(String booker_phone) {
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
	
	@Override
	public String toString() {
		return "ReservationVO [product_code=" + product_code + ", idx=" + idx + ", sortation=" + sortation + ", id="
				+ id + ", productName=" + productName + ", region=" + region + ", city=" + city + ", departure_date="
				+ departure_date + ", arrival_date=" + arrival_date + ", personnel=" + personnel + ", booker=" + booker
				+ ", booker_phone=" + booker_phone + ", booker_email=" + booker_email + ", booker_gender="
				+ booker_gender + ", product_price=" + product_price + ", day_park=" + day_park + ", day_il=" + day_il
				+ ", memo=" + memo + ", option_singleRoom=" + option_singleRoom + ", option_addVehicle="
				+ option_addVehicle + ", option_businessUpgrade=" + option_businessUpgrade + ", total_price="
				+ total_price + ", regDate=" + regDate + ", traveler=" + traveler + ", traveler_gender="
				+ traveler_gender + ", traveler_firstname=" + traveler_firstname + ", traveler_lastname="
				+ traveler_lastname + ", traveler_phone=" + traveler_phone + "]";
	}
	
}