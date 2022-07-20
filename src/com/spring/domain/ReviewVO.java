package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class ReviewVO {

	/* 상품 리뷰 테이블 */
	private int product_code;            	// 상품코드
	private int review_no;				 	// 상품평 고유번호
	private	String review_user;			// 회원 아이디
	private	byte[] review_user_profile;		// 회원 프로필 blob
	private	String title;		 			// 상품리뷰 제목
	private	String contents;		 		// 상품리뷰 내용
	private	Date regdate;		 			// 상품리뷰 등록일자
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getReview_user() {
		return review_user;
	}
	public void setReview_user(String review_user) {
		this.review_user = review_user;
	}
	public byte[] getReview_user_profile() {
		return review_user_profile;
	}
	public void setReview_user_profile(byte[] review_user_profile) {
		this.review_user_profile = review_user_profile;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [product_code=" + product_code + ", review_no=" + review_no + ", review_user="
				+ review_user + ", review_user_profile=" + Arrays.toString(review_user_profile) + ", title=" + title
				+ ", contents=" + contents + ", regdate=" + regdate + "]";
	}
	
}
