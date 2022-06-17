package com.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.domain.MemberVO;
import com.spring.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO mdao;
	
	
	/* 회원가입 동작  */
	@Override
	public void insert(MemberVO vo) throws Exception {
		
		//System.out.println("-- ServiceImpl : vo - " + vo);
		mdao.signUp(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");

	} // insert
	
	
	/* 이메일 중복 확인  */
	@Override
	public int duplCheck(String id) throws Exception {
		
		int check = 0;
		//System.out.println("-- ServiceImpl : dupl() 실행");
		check = mdao.duplCheck(id);
		//System.out.println("-- ServiceImpl : dupl() 실행");
		
		return check;
	} // duplCheck
	
	
	/* 로그인  */
	@Override
	public MemberVO loginMem(MemberVO vo) throws Exception {
		
		// System.out.println("-- ServiceImpl : loginMem() 실행 ");
		// System.out.println("************* vo : " + vo);
		MemberVO mvo = mdao.signIn(vo.getId(), vo.getPw());
		//System.out.println("-- ServiceImpl : loginMem() 실행 완료 ");
		
		return mvo;
	} // loginMem
	
	
	/* 아이디 찾기  */
	@Override
	public String findId(String phone) throws Exception {
		
//		System.out.println("-- ServiceImpl : findId() 실행");
		String id = mdao.findId(phone);
//		System.out.println("-- ServiceImpl : findId() 실행 완료");
		
		return id;
	} // findId
	
	
	/* 비밀번호 찾기  */
	@Override
	public MemberVO findPw(MemberVO vo) throws Exception {
		
//		System.out.println("-- ServiceImpl : findId() 실행");
		MemberVO mvo = mdao.findPw(vo);
//		System.out.println("@@ vo : " + vo);
//		System.out.println("-- ServiceImpl : findId() 실행 완료");
		
		return mvo;
	} // findId
	

}