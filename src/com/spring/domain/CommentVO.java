package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class CommentVO {

	/* 상품별점/평점 테이블 */
	private int product_code;            	// 상품코드
	private int comment_no; 				// 상품별점/평점 등록번호
	private String comment_username;		// 상품별점/평점 작성 회원
	private	byte[] comment_user_profile;	// 상품별점/평점 작성 프로필 blob
	private	String comment;					// 상품별점/평점 코멘트
	private	Date comment_regdate;			// 코멘트 등록일자
	private	double score_fairways;			// 상품별점/평점 - 페이웨이/그린
	private	double score_playSpeed;			// 상품별점/평점 - 플레이속도
	private	double score_caddy;				// 상품별점/평점 - 캐디
	private	double score_facilities;		// 상품별점/평점 - 부대시설
	private	double score_guide;				// 상품별점/평점 - 가이드
	private	double average_score;			// 평균 고객 별점
	
	
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public int getComment_no() {
		return comment_no;
	}
	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}
	public String getComment_username() {
		return comment_username;
	}
	public void setComment_username(String comment_username) {
		this.comment_username = comment_username;
	}
	public byte[] getComment_user_profile() {
		return comment_user_profile;
	}
	public void setComment_user_profile(byte[] comment_user_profile) {
		this.comment_user_profile = comment_user_profile;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getComment_regdate() {
		return comment_regdate;
	}
	public void setComment_regdate(Date comment_regdate) {
		this.comment_regdate = comment_regdate;
	}
	public double getScore_fairways() {
		return score_fairways;
	}
	public void setScore_fairways(double score_fairways) {
		this.score_fairways = score_fairways;
	}
	public double getScore_playSpeed() {
		return score_playSpeed;
	}
	public void setScore_playSpeed(double score_playSpeed) {
		this.score_playSpeed = score_playSpeed;
	}
	public double getScore_caddy() {
		return score_caddy;
	}
	public void setScore_caddy(double score_caddy) {
		this.score_caddy = score_caddy;
	}
	public double getScore_facilities() {
		return score_facilities;
	}
	public void setScore_facilities(double score_facilities) {
		this.score_facilities = score_facilities;
	}
	public double getScore_guide() {
		return score_guide;
	}
	public void setScore_guide(double score_guide) {
		this.score_guide = score_guide;
	}
	public double getAverage_score() {
		return average_score;
	}
	public void setAverage_score(double average_score) {
		this.average_score = average_score;
	}
	
	
	@Override
	public String toString() {
		return "CommentVO [product_code=" + product_code + ", comment_no=" + comment_no + ", comment_username="
				+ comment_username + ", comment_user_profile=" + Arrays.toString(comment_user_profile) + ", comment="
				+ comment + ", comment_regdate=" + comment_regdate + ", score_fairways=" + score_fairways
				+ ", score_playSpeed=" + score_playSpeed + ", score_caddy=" + score_caddy + ", score_facilities="
				+ score_facilities + ", score_guide=" + score_guide + ", average_score=" + average_score
				+ ", getProduct_code()=" + getProduct_code() + ", getComment_no()=" + getComment_no()
				+ ", getComment_username()=" + getComment_username() + ", getComment_user_profile()="
				+ Arrays.toString(getComment_user_profile()) + ", getComment()=" + getComment()
				+ ", getComment_regdate()=" + getComment_regdate() + ", getScore_fairways()=" + getScore_fairways()
				+ ", getScore_playSpeed()=" + getScore_playSpeed() + ", getScore_caddy()=" + getScore_caddy()
				+ ", getScore_facilities()=" + getScore_facilities() + ", getScore_guide()=" + getScore_guide()
				+ ", getAverage_score()=" + getAverage_score() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
}
