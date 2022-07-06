package com.spring.domain;

import java.util.Arrays;

public class ItineraryVO {

	/* 일정표 테이블 */
	private int product_code;            	// 상품코드
	private int iti_idx;					// 일정표 고유번호
	private int day_of_itinerary;			// 체류기간
	private	String morning;					// 조식
	private	String lunch;					// 중식
	private	String dinner;					// 석식
	private	String iti_contents;			// 일정내용
	private	byte[] iti_img; 				// 일정 이미지 blob
	private	String iti_golfCourse;			// 골프장명
	
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getIti_idx() {
		return iti_idx;
	}
	public void setIti_idx(int iti_idx) {
		this.iti_idx = iti_idx;
	}
	public int getDay_of_itinerary() {
		return day_of_itinerary;
	}
	public void setDay_of_itinerary(int day_of_itinerary) {
		this.day_of_itinerary = day_of_itinerary;
	}
	public String getMorning() {
		return morning;
	}
	public void setMorning(String morning) {
		this.morning = morning;
	}
	public String getLunch() {
		return lunch;
	}
	public void setLunch(String lunch) {
		this.lunch = lunch;
	}
	public String getDinner() {
		return dinner;
	}
	public void setDinner(String dinner) {
		this.dinner = dinner;
	}
	public String getIti_contents() {
		return iti_contents;
	}
	public void setIti_contents(String iti_contents) {
		this.iti_contents = iti_contents;
	}
	public byte[] getIti_img() {
		return iti_img;
	}
	public void setIti_img(byte[] iti_img) {
		this.iti_img = iti_img;
	}
	public String getIti_golfCourse() {
		return iti_golfCourse;
	}
	public void setIti_golfCourse(String iti_golfCourse) {
		this.iti_golfCourse = iti_golfCourse;
	}
	
	
	@Override
	public String toString() {
		return "ItineraryVO [product_code=" + product_code + ", iti_idx=" + iti_idx + ", day_of_itinerary="
				+ day_of_itinerary + ", morning=" + morning + ", lunch=" + lunch + ", dinner=" + dinner
				+ ", iti_contents=" + iti_contents + ", iti_img=" + Arrays.toString(iti_img) + ", iti_golfCourse="
				+ iti_golfCourse + "]";
	}
	
}
