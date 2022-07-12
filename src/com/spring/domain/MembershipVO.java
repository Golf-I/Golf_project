package com.spring.domain;

import java.sql.Date;
import java.util.Vector;

public class MembershipVO {

	private int no;				// 인덱스
	private	String division;	// 분류
	private	String region;		// 지역
	private	String city;		// 도시
	private	String golfcourse;	// 골프장명
	private	int hall;			// 홀 수
	private	Date open;			// 개장일
	private	int members;		// 회원수
	private	String address;		// 주소
	private	String type;		// 회원권 종류
	private	int price;			// 회원권 가격
	private int caddyfee;		// 캐디피
	private int cartfee;		// 카트
	private	String introduce;	// 골프장 소개
	private	String uniqueness;	// 특징 및 특이사항
	private	String web;			// 웹사이트
	private Vector<String> vec;
	
	
	public int getCaddyfee() {
		return caddyfee;
	}
	public void setCaddyfee(int caddyfee) {
		this.caddyfee = caddyfee;
	}
	public int getCartfee() {
		return cartfee;
	}
	public void setCartfee(int cartfee) {
		this.cartfee = cartfee;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
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
	public String getGolfcourse() {
		return golfcourse;
	}
	public void setGolfcourse(String golfcourse) {
		this.golfcourse = golfcourse;
	}
	public int getHall() {
		return hall;
	}
	public void setHall(int hall) {
		this.hall = hall;
	}
	public Date getOpen() {
		return open;
	}
	public void setOpen(Date open) {
		this.open = open;
	}
	public int getMembers() {
		return members;
	}
	public void setMembers(int members) {
		this.members = members;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getUniqueness() {
		return uniqueness;
	}
	public void setUniqueness(String uniqueness) {
		this.uniqueness = uniqueness;
	}
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}
	
	
	@Override
	public String toString() {
		return "MembershipVO [no=" + no + ", division=" + division + ", region=" + region + ", city=" + city
				+ ", golfcourse=" + golfcourse + ", hall=" + hall + ", open=" + open + ", members=" + members
				+ ", address=" + address + ", type=" + type + ", price=" + price + ", caddyfee=" + caddyfee
				+ ", cartfee=" + cartfee + ", introduce=" + introduce + ", uniqueness=" + uniqueness + ", web=" + web
				+ ", vec=" + vec + "]";
	}
	
}