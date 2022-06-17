package com.spring.domain;

import java.sql.Date;
import java.util.Arrays;

public class MemberVO {

	private String id; // 아이디
	private String pw; // 비밀번호
	private String name; // 이름 
	private String phone; // 전화번호
	private Date birth; // 생년월일
	private	String gender; // 성별
	private	String sns;	// sns 아이디
	private	String mms; // 문자 수신
	private	String mail; // 메일 수신
	private	String push; // 푸쉬 수신
	private byte[] icon; // 캐릭터 이미지  BLOB
	
	// getter/setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSns() {
		return sns;
	}
	public void setSns(String sns) {
		this.sns = sns;
	}
	public String getMms() {
		return mms;
	}
	public void setMms(String mms) {
		this.mms = mms;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPush() {
		return push;
	}
	public void setPush(String push) {
		this.push = push;
	}
	public byte[] getIcon() {
		return icon;
	}
	public void setIcon(byte[] icon) {
		this.icon = icon;
	}
	
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", birth=" + birth
				+ ", gender=" + gender + ", sns=" + sns + ", mms=" + mms + ", mail=" + mail + ", push=" + push
				+ ", icon=" + Arrays.toString(icon) + "]";
	}
	
}
