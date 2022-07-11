package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class NoReservationVO {

	/* 예약불가 기간 테이블 */
	private int product_code;            	// 상품코드
	private int no_idx;						// 예약불가 기간 고유번호
	private	Date day;						// 예약불가 일자
	private	String remarks;					// 예약불가 사유
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getNo_idx() {
		return no_idx;
	}
	public void setNo_idx(int no_idx) {
		this.no_idx = no_idx;
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	@Override
	public String toString() {
		return "NoRerservationVO [product_code=" + product_code + ", no_idx=" + no_idx + ", day=" + day + ", memo="
				+ remarks + "]";
	}
	
}
