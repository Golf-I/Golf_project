package com.spring.service;

import com.spring.domain.MemberVO;

public interface MemberService {

	public void insert(MemberVO vo) throws Exception; // 회원가입 메서드

	public int duplCheck(String id) throws Exception; // 일반회원 이메일 중복 확인 메서드 
	
	public MemberVO loginMem(MemberVO vo) throws Exception; // 일반회원 로그인 메서드
	
	public String findId(String phone) throws Exception; // 아이디 찾기 메서드
	
	public MemberVO findPw(MemberVO vo) throws Exception; // 비밀번호 찾기 메서드

	public int snsDuplCheck(MemberVO vo) throws Exception; // 소셜회원 이메일 중복 확인
	
	public MemberVO snsSignIn(MemberVO vo) throws Exception; // 소셜회원 로그인 메서드
	
	public int mypageCheck(MemberVO vo) throws Exception; // 마이페이지 이전 비밀번호 확인
	
	public MemberVO memberGetInfo(String id) throws Exception; // 회원정보 가져오기
	
	public int memberInfoUpdate(MemberVO vo) throws Exception; // 회원정보 수정하기

}