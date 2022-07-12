package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class AcademyVO {

	private int no;				// 인덱스
	private	String title;		// 타이틀
	private	String contents;	// 내용
	private byte[] img1;		// 이미지1 (리스트 썸네일)
	private byte[] img2;		// 이미지2
	private byte[] img3;		// 이미지3
	private	String manager;		
	private	Date regdate;		// 등록일자
	
	
	public byte[] getImg1() {
		return img1;
	}
	public void setImg1(byte[] img1) {
		this.img1 = img1;
	}
	public byte[] getImg2() {
		return img2;
	}
	public void setImg2(byte[] img2) {
		this.img2 = img2;
	}
	public byte[] getImg3() {
		return img3;
	}
	public void setImg3(byte[] img3) {
		this.img3 = img3;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "AcademyVO [no=" + no + ", title=" + title + ", contents=" + contents + ", img1=" + Arrays.toString(img1)
				+ ", img2=" + Arrays.toString(img2) + ", img3=" + Arrays.toString(img3) + ", manager=" + manager
				+ ", regdate=" + regdate + "]";
	}

}