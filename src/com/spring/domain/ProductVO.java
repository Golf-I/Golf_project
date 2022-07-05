package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class ProductVO {

	private int package_product_code; // 상품 코드
	private	String package_region; // 상품 지역
	private	String package_city; // 상품 도시 (카테고리)
	private	String package_productName; // 상품명
	private	int package_day; // 여행기간
	private	String package_manager; // 담당자
	private	int package_lowestPrice; // 최적가
	private int package_minimum_number_of_people; // 최소인원
	private	String package_arrival; // 출발지역
	private	String package_depart; // 도착지역
	private	Date package_period_start; // 여행기간 첫날
	private	Date package_period_fin; // 여행기간 마지막날
	private	int package_number_of_days; // 여행일수
	private	String package_hotel; // 호텔명
	private	String package_airline; // 항공명
	private	String package_golfCourse; // 골프장명
	private	int package_weekday_fee; // 주중요금
	private	int package_weekend_fee; // 주말요금
	private	Date package_no_reservation_day1; // 여행불가 날짜1
	private	String package_no_reservation_memo1; // 여행불가 사유1
	private	Date package_no_reservation_day2; // 여행불가 날짜2
	private	String package_no_reservation_memo2; // 여행불가 사유2
	private	Date package_no_reservation_day3; // 여행불가 날짜3
	private	String package_no_reservation_memo3; // 여행불가 사유3
	private	Date package_no_reservation_day4; // 여행불가 날짜4
	private	String package_no_reservation_memo4; // 여행불가 사유4
	private	byte[] package_img; // blob 이미지
//	private	String package_img; // blob 이미지
	private	byte[] pacage_serveimg; // blob 서브이미지
//	private	String pacage_serveimg; // blob 서브이미지
	private	String package_golfCourse_information;	// 골프장 소개
	private	byte[] package_golf_img1; // blob 골프장 이미지1
	private	byte[] package_golf_img2; // blob 골프장 이미지2
//	private	String package_golf_img1; // blob 골프장 이미지1
//	private	String package_golf_img2; // blob 골프장 이미지2
	private	String package_hotel_information; // 호텔 소개
	private	byte[] package_hotel_img1; // blob 호텔 이미지1
	private	byte[] package_hotel_img2; // blob 호텔 이미지2
//	private	String package_hotel_img1; // blob 호텔 이미지1
//	private	String package_hotel_img2; // blob 호텔 이미지2
	private	String package_include; // 포함사항
	private	String package_not_include; // 불포함사항
	private	String package_etc; // 기타사항
	private	String package_precaution; // 주의사항
	
	private int package_review_no; // 상품평 작성번호
	private	String package_reviewer; // 상품평 입력한 사용자
	private	byte[] package_reviewer_profile; // blob 상품평 입력한 사용자 프로필 
//	private	String package_reviewer_profile; // blob 상품평 입력한 사용자 프로필 
	private	String package_reviewer_contents; // 상품평 입력 내용
	private	Date package_reviewer_regdate; // 상품평 등록일자
	private	double package_review_average_score; // 상품 평균점수
	
	
	public int getPackage_product_code() {
		return package_product_code;
	}
	public void setPackage_product_code(int package_product_code) {
		this.package_product_code = package_product_code;
	}
	public String getPackage_region() {
		return package_region;
	}
	public void setPackage_region(String package_region) {
		this.package_region = package_region;
	}
	public String getPackage_city() {
		return package_city;
	}
	public void setPackage_city(String package_city) {
		this.package_city = package_city;
	}
	public String getPackage_productName() {
		return package_productName;
	}
	public void setPackage_productName(String package_productName) {
		this.package_productName = package_productName;
	}
	public int getPackage_day() {
		return package_day;
	}
	public void setPackage_day(int package_day) {
		this.package_day = package_day;
	}
	public String getPackage_manager() {
		return package_manager;
	}
	public void setPackage_manager(String package_manager) {
		this.package_manager = package_manager;
	}
	public int getPackage_lowestPrice() {
		return package_lowestPrice;
	}
	public void setPackage_lowestPrice(int package_lowestPrice) {
		this.package_lowestPrice = package_lowestPrice;
	}
	public int getPackage_minimum_number_of_people() {
		return package_minimum_number_of_people;
	}
	public void setPackage_minimum_number_of_people(int package_minimum_number_of_people) {
		this.package_minimum_number_of_people = package_minimum_number_of_people;
	}
	public String getPackage_arrival() {
		return package_arrival;
	}
	public void setPackage_arrival(String package_arrival) {
		this.package_arrival = package_arrival;
	}
	public String getPackage_depart() {
		return package_depart;
	}
	public void setPackage_depart(String package_depart) {
		this.package_depart = package_depart;
	}
	public Date getPackage_period_start() {
		return package_period_start;
	}
	public void setPackage_period_start(Date package_period_start) {
		this.package_period_start = package_period_start;
	}
	public Date getPackage_period_fin() {
		return package_period_fin;
	}
	public void setPackage_period_fin(Date package_period_fin) {
		this.package_period_fin = package_period_fin;
	}
	public int getPackage_number_of_days() {
		return package_number_of_days;
	}
	public void setPackage_number_of_days(int package_number_of_days) {
		this.package_number_of_days = package_number_of_days;
	}
	public String getPackage_hotel() {
		return package_hotel;
	}
	public void setPackage_hotel(String package_hotel) {
		this.package_hotel = package_hotel;
	}
	public String getPackage_airline() {
		return package_airline;
	}
	public void setPackage_airline(String package_airline) {
		this.package_airline = package_airline;
	}
	public String getPackage_golfCourse() {
		return package_golfCourse;
	}
	public void setPackage_golfCourse(String package_golfCourse) {
		this.package_golfCourse = package_golfCourse;
	}
	public int getPackage_weekday_fee() {
		return package_weekday_fee;
	}
	public void setPackage_weekday_fee(int package_weekday_fee) {
		this.package_weekday_fee = package_weekday_fee;
	}
	public int getPackage_weekend_fee() {
		return package_weekend_fee;
	}
	public void setPackage_weekend_fee(int package_weekend_fee) {
		this.package_weekend_fee = package_weekend_fee;
	}
	public Date getPackage_no_reservation_day1() {
		return package_no_reservation_day1;
	}
	public void setPackage_no_reservation_day1(Date package_no_reservation_day1) {
		this.package_no_reservation_day1 = package_no_reservation_day1;
	}
	public String getPackage_no_reservation_memo1() {
		return package_no_reservation_memo1;
	}
	public void setPackage_no_reservation_memo1(String package_no_reservation_memo1) {
		this.package_no_reservation_memo1 = package_no_reservation_memo1;
	}
	public Date getPackage_no_reservation_day2() {
		return package_no_reservation_day2;
	}
	public void setPackage_no_reservation_day2(Date package_no_reservation_day2) {
		this.package_no_reservation_day2 = package_no_reservation_day2;
	}
	public String getPackage_no_reservation_memo2() {
		return package_no_reservation_memo2;
	}
	public void setPackage_no_reservation_memo2(String package_no_reservation_memo2) {
		this.package_no_reservation_memo2 = package_no_reservation_memo2;
	}
	public Date getPackage_no_reservation_day3() {
		return package_no_reservation_day3;
	}
	public void setPackage_no_reservation_day3(Date package_no_reservation_day3) {
		this.package_no_reservation_day3 = package_no_reservation_day3;
	}
	public String getPackage_no_reservation_memo3() {
		return package_no_reservation_memo3;
	}
	public void setPackage_no_reservation_memo3(String package_no_reservation_memo3) {
		this.package_no_reservation_memo3 = package_no_reservation_memo3;
	}
	public Date getPackage_no_reservation_day4() {
		return package_no_reservation_day4;
	}
	public void setPackage_no_reservation_day4(Date package_no_reservation_day4) {
		this.package_no_reservation_day4 = package_no_reservation_day4;
	}
	public String getPackage_no_reservation_memo4() {
		return package_no_reservation_memo4;
	}
	public void setPackage_no_reservation_memo4(String package_no_reservation_memo4) {
		this.package_no_reservation_memo4 = package_no_reservation_memo4;
	}
	public byte[] getPackage_img() {
		return package_img;
	}
	public void setPackage_img(byte[] package_img) {
		this.package_img = package_img;
	}
	public byte[] getPacage_serveimg() {
		return pacage_serveimg;
	}
	public void setPacage_serveimg(byte[] pacage_serveimg) {
		this.pacage_serveimg = pacage_serveimg;
	}
	public String getPackage_golfCourse_information() {
		return package_golfCourse_information;
	}
	public void setPackage_golfCourse_information(String package_golfCourse_information) {
		this.package_golfCourse_information = package_golfCourse_information;
	}
	public byte[] getPackage_golf_img1() {
		return package_golf_img1;
	}
	public void setPackage_golf_img1(byte[] package_golf_img1) {
		this.package_golf_img1 = package_golf_img1;
	}
	public byte[] getPackage_golf_img2() {
		return package_golf_img2;
	}
	public void setPackage_golf_img2(byte[] package_golf_img2) {
		this.package_golf_img2 = package_golf_img2;
	}
	public String getPackage_hotel_information() {
		return package_hotel_information;
	}
	public void setPackage_hotel_information(String package_hotel_information) {
		this.package_hotel_information = package_hotel_information;
	}
	public byte[] getPackage_hotel_img1() {
		return package_hotel_img1;
	}
	public void setPackage_hotel_img1(byte[] package_hotel_img1) {
		this.package_hotel_img1 = package_hotel_img1;
	}
	public byte[] getPackage_hotel_img2() {
		return package_hotel_img2;
	}
	public void setPackage_hotel_img2(byte[] package_hotel_img2) {
		this.package_hotel_img2 = package_hotel_img2;
	}
	public String getPackage_include() {
		return package_include;
	}
	public void setPackage_include(String package_include) {
		this.package_include = package_include;
	}
	public String getPackage_not_include() {
		return package_not_include;
	}
	public void setPackage_not_include(String package_not_include) {
		this.package_not_include = package_not_include;
	}
	public String getPackage_etc() {
		return package_etc;
	}
	public void setPackage_etc(String package_etc) {
		this.package_etc = package_etc;
	}
	public String getPackage_precaution() {
		return package_precaution;
	}
	public void setPackage_precaution(String package_precaution) {
		this.package_precaution = package_precaution;
	}
	public int getPackage_review_no() {
		return package_review_no;
	}
	public void setPackage_review_no(int package_review_no) {
		this.package_review_no = package_review_no;
	}
	public String getPackage_reviewer() {
		return package_reviewer;
	}
	public void setPackage_reviewer(String package_reviewer) {
		this.package_reviewer = package_reviewer;
	}
	public byte[] getPackage_reviewer_profile() {
		return package_reviewer_profile;
	}
	public void setPackage_reviewer_profile(byte[] package_reviewer_profile) {
		this.package_reviewer_profile = package_reviewer_profile;
	}
	public String getPackage_reviewer_contents() {
		return package_reviewer_contents;
	}
	public void setPackage_reviewer_contents(String package_reviewer_contents) {
		this.package_reviewer_contents = package_reviewer_contents;
	}
	public Date getPackage_reviewer_regdate() {
		return package_reviewer_regdate;
	}
	public void setPackage_reviewer_regdate(Date package_reviewer_regdate) {
		this.package_reviewer_regdate = package_reviewer_regdate;
	}
	public double getPackage_review_average_score() {
		return package_review_average_score;
	}
	public void setPackage_review_average_score(double package_review_average_score) {
		this.package_review_average_score = package_review_average_score;
	}
	
	
	@Override
	public String toString() {
		return "ProductVO [package_product_code=" + package_product_code + ", package_region=" + package_region
				+ ", package_city=" + package_city + ", package_productName=" + package_productName + ", package_day="
				+ package_day + ", package_manager=" + package_manager + ", package_lowestPrice=" + package_lowestPrice
				+ ", package_minimum_number_of_people=" + package_minimum_number_of_people + ", package_arrival="
				+ package_arrival + ", package_depart=" + package_depart + ", package_period_start="
				+ package_period_start + ", package_period_fin=" + package_period_fin + ", package_number_of_days="
				+ package_number_of_days + ", package_hotel=" + package_hotel + ", package_airline=" + package_airline
				+ ", package_golfCourse=" + package_golfCourse + ", package_weekday_fee=" + package_weekday_fee
				+ ", package_weekend_fee=" + package_weekend_fee + ", package_no_reservation_day1="
				+ package_no_reservation_day1 + ", package_no_reservation_memo1=" + package_no_reservation_memo1
				+ ", package_no_reservation_day2=" + package_no_reservation_day2 + ", package_no_reservation_memo2="
				+ package_no_reservation_memo2 + ", package_no_reservation_day3=" + package_no_reservation_day3
				+ ", package_no_reservation_memo3=" + package_no_reservation_memo3 + ", package_no_reservation_day4="
				+ package_no_reservation_day4 + ", package_no_reservation_memo4=" + package_no_reservation_memo4
				+ ", package_img=" + Arrays.toString(package_img) + ", pacage_serveimg="
				+ Arrays.toString(pacage_serveimg) + ", package_golfCourse_information="
				+ package_golfCourse_information + ", package_golf_img1=" + Arrays.toString(package_golf_img1)
				+ ", package_golf_img2=" + Arrays.toString(package_golf_img2) + ", package_hotel_information="
				+ package_hotel_information + ", package_hotel_img1=" + Arrays.toString(package_hotel_img1)
				+ ", package_hotel_img2=" + Arrays.toString(package_hotel_img2) + ", package_include=" + package_include
				+ ", package_not_include=" + package_not_include + ", package_etc=" + package_etc
				+ ", package_precaution=" + package_precaution + ", package_review_no=" + package_review_no
				+ ", package_reviewer=" + package_reviewer + ", package_reviewer_profile="
				+ Arrays.toString(package_reviewer_profile) + ", package_reviewer_contents=" + package_reviewer_contents
				+ ", package_reviewer_regdate=" + package_reviewer_regdate + ", package_review_average_score="
				+ package_review_average_score + "]";
	}
	
}