package com.spring.domain;

import java.sql.Timestamp;

public class BoardVO {

	private int no; // 글번호
	private String category; // 분류
	private String title; // 글제목
	private String writer; // 작성자
	private Timestamp date; // 작성일자
	private int views; // 조회수
	private String contents; // 글 내용
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", category=" + category + ", title=" + title + ", writer=" + writer + ", date="
				+ date + ", views=" + views + ", contents=" + contents + "]";
	}
	
}