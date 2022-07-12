package com.spring.domain;

import java.sql.Timestamp;

public class InquireVO {

	private int no; 				// 글번호
	private	String category; 		// 카테고리
	private String title;			// 아카데미/회원권 제목
	private	String companyName; 	// 회사명
	private	String manager; 		// 담당자
	private	String contactNumber;	// 연락처
	private	String contactDate; 	// 상담일자
	private	String content;			// 상담내용
	private	Timestamp regDate; 		// 글 등록일자
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getContactDate() {
		return contactDate;
	}
	public void setContactDate(String contactDate) {
		this.contactDate = contactDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "InquireVO [no=" + no + ", category=" + category + ", title=" + title + ", companyName=" + companyName
				+ ", manager=" + manager + ", contactNumber=" + contactNumber + ", contactDate=" + contactDate
				+ ", content=" + content + ", regDate=" + regDate + "]";
	}
	
}
