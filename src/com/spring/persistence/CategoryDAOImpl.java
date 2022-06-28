package com.spring.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.InquireVO;
import com.spring.domain.PromotionVO;


@Repository
public class CategoryDAOImpl implements CategoryDAO{
  
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.spring.mapper.CategoryMapper";

	
	/* 상담신청 등록  */
	@Override
	public void register(InquireVO vo) throws Exception{
		//System.out.println("-- DAOImpl : signUp() 실행 ");
		sqlSession.insert(namespace+".register", vo);
		//System.out.println("-- DAOImpl : signUp() 실행 완료 ");
	} // register


	/* 제휴/홍보 문의 */
	@Override
	public void promotion(PromotionVO vo) throws Exception {
		//System.out.println("-- DAOImpl : signUp() 실행 ");
		sqlSession.insert(namespace+".promotion", vo);
		//System.out.println("-- DAOImpl : signUp() 실행 완료 ");
	} // promotion


	/* 홀세일 문의 */
	@Override
	public void wholesale(PromotionVO vo) throws Exception {
		//System.out.println("-- DAOImpl : signUp() 실행 ");
		sqlSession.insert(namespace+".wholesale", vo);
		//System.out.println("-- DAOImpl : signUp() 실행 완료 ");
	} // wholesale


	/* 홀세일 문의 */
	@Override
	public void store(PromotionVO vo) throws Exception {
		//System.out.println("-- DAOImpl : signUp() 실행 ");
		sqlSession.insert(namespace+".store", vo);
		//System.out.println("-- DAOImpl : signUp() 실행 완료 ");
	} // store
	
	
}