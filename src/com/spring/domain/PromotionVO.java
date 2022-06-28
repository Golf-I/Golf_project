package com.spring.domain;

import java.sql.Timestamp;

public class PromotionVO {

	private int no; // 글번호
	private	String suggestions; // 제안사항
	private	String company;	// 회사명
	private	String address;	// 회사주소
	private	String web;	// 홈페이지
	private	String manager;	// 담당자
	private	String department; // 부서
	private	String contact; // 연락처
	private String phone; // 핸드폰
	private	String email; // 이메일
	private	String introduce; // 회사소개
	private	String contents; // 제안내용
	private	String filename; // 파일이름, 실제 저장된 파일명 
	private String fileOriginalName; // 사용자가 올린 원래 파일명
	private long fileSize; // 파일 사이즈   1024,  1024*1024
	private String filePath; // 저장 경로(board/2020)
//	private	String filetype; // 파일타입
	private	char filetype; // 파일타입
	private	Timestamp regDate; // 글 등록일자
	private String brand; // 상품유형
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSuggestions() {
		return suggestions;
	}
	public void setSuggestions(String suggestions) {
		this.suggestions = suggestions;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFileOriginalName() {
		return fileOriginalName;
	}
	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public char getFiletype() {
		return filetype;
	}
	public void setFiletype(char filetype) {
		this.filetype = filetype;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	
	@Override
	public String toString() {
		return "PromotionVO [no=" + no + ", suggestions=" + suggestions + ", company=" + company + ", address="
				+ address + ", web=" + web + ", manager=" + manager + ", department=" + department + ", contact="
				+ contact + ", phone=" + phone + ", email=" + email + ", introduce=" + introduce + ", contents="
				+ contents + ", filename=" + filename + ", fileOriginalName=" + fileOriginalName + ", fileSize="
				+ fileSize + ", filePath=" + filePath + ", filetype=" + filetype + ", regDate=" + regDate + ", brand="
				+ brand + "]";
	}
	
}
