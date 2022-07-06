package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class ReviewVO {

	/* 상품 리뷰 테이블 */
	private int product_code;            	// 상품코드
	private int review_no;				 	// 상품평 고유번호
	private	String review_username;			// 회원 아이디
	private	byte[] review_user_profile;		// 회원 프로필 blob
	private	String review_title;		 	// 상품리뷰 제목
	private	String review_contents;		 	// 상품리뷰 내용
	private	Date review_regdate;		 	// 상품리뷰 등록일자
	
	
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
	public String getReview_username() {
		return review_username;
	}
	public void setReview_username(String review_username) {
		this.review_username = review_username;
	}
	public byte[] getReview_user_profile() {
		return review_user_profile;
	}
	public void setReview_user_profile(byte[] review_user_profile) {
		this.review_user_profile = review_user_profile;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_contents() {
		return review_contents;
	}
	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}
	public Date getReview_regdate() {
		return review_regdate;
	}
	public void setReview_regdate(Date review_regdate) {
		this.review_regdate = review_regdate;
	}
	
	
	@Override
	public String toString() {
		return "ReviewVO [product_code=" + product_code + ", review_no=" + review_no + ", review_username="
				+ review_username + ", review_user_profile=" + Arrays.toString(review_user_profile) + ", review_title="
				+ review_title + ", review_contents=" + review_contents + ", review_regdate=" + review_regdate
				+ ", getProduct_code()=" + getProduct_code() + ", getReview_no()=" + getReview_no()
				+ ", getReview_username()=" + getReview_username() + ", getReview_user_profile()="
				+ Arrays.toString(getReview_user_profile()) + ", getReview_title()=" + getReview_title()
				+ ", getReview_contents()=" + getReview_contents() + ", getReview_regdate()=" + getReview_regdate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
}
