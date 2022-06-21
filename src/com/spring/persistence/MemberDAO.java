package com.spring.persistence;

import com.spring.domain.MemberVO;

public interface MemberDAO {

	public void signUp(MemberVO vo) throws Exception; // 회원가입
	 
	public int duplCheck(String id) throws Exception; // 일반회원 이메일 중복 확인
	
	public MemberVO signIn(String id, String pw) throws Exception; // 일반회원 로그인

	public String findId(String phone) throws Exception; // 아이디 찾기
	
	public MemberVO findPw(MemberVO vo) throws Exception; // 비밀번호 찾기
	
	public int snsDuplCheck(MemberVO vo) throws Exception; // 소셜회원 이메일 중복 확인
	
	public MemberVO snsSignIn(MemberVO vo) throws Exception; // 소셜회원 로그인
}