package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class ProductVO {

	/* 가격/상품정보 테이블 */
	private int product_code;            	// 상품코드
	private	String region;	             	// 지역
	private	String city;	             	// 도시
	private	String productName;	         	// 상품명
	private	int day_park;	             	// N박
	private	int day_il;					 	// N일
	private	String manager;				 	// 관리자
	private	int minimum_number_of_people;	// 최소인원
	private	int lowestPrice;			 	// 최적가
	private	String arrival;				 	// 출발지
	private	String depart;				 	// 도착지
	private	Date period_start;			 	// 일정 시작일
	private	Date period_fin;			 	// 일정 종료일
	private	int number_of_days;			 	// 일정 수
	private	String hotel;				 	// 숙박
	private	String airline;				 	// 항공
	private	String golfCourse;			 	// 골프장
	private	int weekday_fee;			 	// 주중요금
	private	int weekend_fee;			 	// 주말요금
	private	byte[] img; 				 	//	상품 이미지 blob
	private	byte[] serveimg; 			 	// 상품 서브이미지 blob;
	private	String golfCourse_info;		 	// 골프장 소개
	private	byte[] golf_img1; 			 	// 골프장 이미지 1 blob;
	private	byte[] golf_img2; 			 	// 골프장 이미지 2 blob;	
	private	String hotel_info;			 	// 호텔 소개
	private	byte[] hotel_img1; 			 	// 호텔 이미지 1 blob;	
	private	byte[] hotel_img2; 			 	// 호텔 이미지 2 blob;	
	private	String include;				 	// 포함사항
	private	String not_include;			 	// 불포함사항
	private	String etc;					 	// 기타사항
	private	String precaution;			 	// 주의사항
	
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
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
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public int getMinimum_number_of_people() {
		return minimum_number_of_people;
	}
	public void setMinimum_number_of_people(int minimum_number_of_people) {
		this.minimum_number_of_people = minimum_number_of_people;
	}
	public int getLowestPrice() {
		return lowestPrice;
	}
	public void setLowestPrice(int lowestPrice) {
		this.lowestPrice = lowestPrice;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public Date getPeriod_start() {
		return period_start;
	}
	public void setPeriod_start(Date period_start) {
		this.period_start = period_start;
	}
	public Date getPeriod_fin() {
		return period_fin;
	}
	public void setPeriod_fin(Date period_fin) {
		this.period_fin = period_fin;
	}
	public int getNumber_of_days() {
		return number_of_days;
	}
	public void setNumber_of_days(int number_of_days) {
		this.number_of_days = number_of_days;
	}
	public String getHotel() {
		return hotel;
	}
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getGolfCourse() {
		return golfCourse;
	}
	public void setGolfCourse(String golfCourse) {
		this.golfCourse = golfCourse;
	}
	public int getWeekday_fee() {
		return weekday_fee;
	}
	public void setWeekday_fee(int weekday_fee) {
		this.weekday_fee = weekday_fee;
	}
	public int getWeekend_fee() {
		return weekend_fee;
	}
	public void setWeekend_fee(int weekend_fee) {
		this.weekend_fee = weekend_fee;
	}
	public byte[] getImg() {
		return img;
	}
	public void setImg(byte[] img) {
		this.img = img;
	}
	public byte[] getServeimg() {
		return serveimg;
	}
	public void setServeimg(byte[] serveimg) {
		this.serveimg = serveimg;
	}
	public String getGolfCourse_info() {
		return golfCourse_info;
	}
	public void setGolfCourse_info(String golfCourse_info) {
		this.golfCourse_info = golfCourse_info;
	}
	public byte[] getGolf_img1() {
		return golf_img1;
	}
	public void setGolf_img1(byte[] golf_img1) {
		this.golf_img1 = golf_img1;
	}
	public byte[] getGolf_img2() {
		return golf_img2;
	}
	public void setGolf_img2(byte[] golf_img2) {
		this.golf_img2 = golf_img2;
	}
	public String getHotel_info() {
		return hotel_info;
	}
	public void setHotel_info(String hotel_info) {
		this.hotel_info = hotel_info;
	}
	public byte[] getHotel_img1() {
		return hotel_img1;
	}
	public void setHotel_img1(byte[] hotel_img1) {
		this.hotel_img1 = hotel_img1;
	}
	public byte[] getHotel_img2() {
		return hotel_img2;
	}
	public void setHotel_img2(byte[] hotel_img2) {
		this.hotel_img2 = hotel_img2;
	}
	public String getInclude() {
		return include;
	}
	public void setInclude(String include) {
		this.include = include;
	}
	public String getNot_include() {
		return not_include;
	}
	public void setNot_include(String not_include) {
		this.not_include = not_include;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getPrecaution() {
		return precaution;
	}
	public void setPrecaution(String precaution) {
		this.precaution = precaution;
	}
	
	
	@Override
	public String toString() {
		return "ProductVO [product_code=" + product_code + ", region=" + region + ", city=" + city + ", productName="
				+ productName + ", day_park=" + day_park + ", day_il=" + day_il + ", manager=" + manager
				+ ", minimum_number_of_people=" + minimum_number_of_people + ", lowestPrice=" + lowestPrice
				+ ", arrival=" + arrival + ", depart=" + depart + ", period_start=" + period_start + ", period_fin="
				+ period_fin + ", number_of_days=" + number_of_days + ", hotel=" + hotel + ", airline=" + airline
				+ ", golfCourse=" + golfCourse + ", weekday_fee=" + weekday_fee + ", weekend_fee=" + weekend_fee
				+ ", img=" + Arrays.toString(img) + ", serveimg=" + Arrays.toString(serveimg) + ", golfCourse_info="
				+ golfCourse_info + ", golf_img1=" + Arrays.toString(golf_img1) + ", golf_img2="
				+ Arrays.toString(golf_img2) + ", hotel_info=" + hotel_info + ", hotel_img1="
				+ Arrays.toString(hotel_img1) + ", hotel_img2=" + Arrays.toString(hotel_img2) + ", include=" + include
				+ ", not_include=" + not_include + ", etc=" + etc + ", precaution=" + precaution + "]";
	}

}