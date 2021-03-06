package com.spring.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
  
	@Inject
	private SqlSession sqlSession; 	// DB와 연결, 자원 해제, SQL쿼리 실행 객체
	
	private static final String namespace = "com.spring.mapper.MemberMapper"; // memberMapper.xml파일의 namespace와 동일

	
	/* 회원가입  */
	@Override
	public void signUp(MemberVO vo) throws Exception{
		//System.out.println("-- DAOImpl : signUp() 실행 ");
		sqlSession.selectOne(namespace+".signUp", vo);
		//System.out.println("-- DAOImpl : signUp() 실행 완료 ");
		
	} // signUp
	
	
	/* 일반회원 이메일 중복 확인  */
	@Override
	public int duplCheck(String id) throws Exception {
		
		int check = 0;
		//System.out.println("-- DAOImpl : duplicate() 실행");
		check = sqlSession.selectOne(namespace+".duplCheck", id);
		//System.out.println("-- DAOImpl : duplicate() 실행 완료");
		
		return check;
	} // duplicate
	
	
	/* 일반회원 로그인  */
	@Override
	public MemberVO signIn(String id, String pw) throws Exception{
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		paramMap.put("pw", pw);
		
		MemberVO vo = sqlSession.selectOne(namespace+".signIn", paramMap); 
		
		return vo;
	} // signIn

	
	/* 아이디 찾기  */
	@Override
	public MemberVO findId(String phone) throws Exception {
		
//		System.out.println("-- DAOImpl : findId() 실행");
		MemberVO vo = sqlSession.selectOne(namespace+".findId", phone);
//		System.out.println("-- DAOImpl : id = " + id);
//		System.out.println("-- DAOImpl : findId() 실행 완료");

		return vo;
	} // findId
	
	
	/* 비밀번호 찾기  */
	@Override
	public MemberVO findPw(MemberVO vo) throws Exception {
		
//		System.out.println("-- DAOImpl : findPw() 실행");
		MemberVO mvo = sqlSession.selectOne(namespace+".findPw", vo);
//		System.out.println("-- DAOImpl : mvo = " + mvo);
//		System.out.println("-- DAOImpl : findPw() 실행 완료");
		
		return mvo;
	} // findPw


	/* 소셜회원 이메일 중복 확인  */
	@Override
	public int snsDuplCheck(MemberVO vo) throws Exception {

		int check;
		check = sqlSession.selectOne(namespace+".snsDuplCheck", vo);
		
		return check;
	} // snsDuplCheck


	/* 소셜회원 로그인  */
	@Override
	public MemberVO snsSignIn(MemberVO vo) throws Exception {
		
		MemberVO mvo = sqlSession.selectOne(namespace+".snsSignIn", vo); 
		
		return mvo;
	} // snsSignIn


	/* 마이페이지 이전 비밀번호 확인 */
	@Override
	public int mypageCheck(MemberVO vo) throws Exception {

		int check = sqlSession.selectOne(namespace+".mypageCheck", vo);
		
		return check;
	} // mypageCheck


	/* 회원정보 가져오기 */
	@Override
	public MemberVO memberGetInfo(String id) throws Exception {

		MemberVO mvo = sqlSession.selectOne(namespace+".memberGetInfo", id);
		
		return mvo;
	} // memberGetInfo


	/* 회원정보 수정하기 */
	@Override
	public int memberInfoUpdate(MemberVO vo) throws Exception {

		int result = sqlSession.update(namespace+".memberInfoUpdate", vo);
		
		return result;
	} // memberInfoUpdate


	/* 회원정보 이름 수정하기 */
	@Override
	public int memberNameUpdate(MemberVO vo) throws Exception {

		int result = sqlSession.update(namespace+".memberNameUpdate", vo);
		
		return result;
	} // memberNameUpdate


	/* 회원정보 전화번호 수정하기 */
	@Override
	public int memberPhoneUpdate(MemberVO vo) throws Exception {

		int result = sqlSession.update(namespace+".memberPhoneUpdate", vo);
		
		return result;
	} // memberPhoneUpdate


	/* 회원 탈퇴하기 */
	@Override
	public int memberSecede(MemberVO vo) throws Exception {
		
		int result = sqlSession.delete(namespace+".memberSecede", vo);
//		System.out.println("DAOImpl result : " + result);
//		System.out.println("DAOImpl vo : " + vo);
		
		return result;
	} // memberSecede
}