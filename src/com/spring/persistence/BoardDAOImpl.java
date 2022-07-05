package com.spring.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.InquireVO;
import com.spring.domain.ProductVO;
import com.spring.domain.PromotionVO;


@Repository
public class BoardDAOImpl implements BoardDAO{
  
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.spring.mapper.BoardMapper";

	
	/* 공지사항 전체 게시글 갯수 조회 */
	@Override
	public int countNotice() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countNotice");
		
		return count;
	} // countNotice
	
	
	/* 자주묻는질문 전체 게시글 갯수 조회 */
	@Override
	public int countQnA() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countQnA");
		
		return count;
	} // countQnA

	
	/* 자주묻는질문 전체 게시글 갯수 조회 */
	@Override
	public int countPackage() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countPackage");
		
		return count;
	} // countPackage

	
	/* 공지사항 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectNotice(Criteria cri) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		
		bbsList = sqlSession.selectList(namespace+".selectNotice", cri);
		
		return bbsList;
	} // selectNotice
	
	
	/* 자주묻는질문 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectQnA(Criteria cri) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		
		bbsList = sqlSession.selectList(namespace+".selectQnA", cri);
		
		return bbsList;
	} // selectQnA

	
	/* 패키지 상품 전체 게시글 조회 */
	@Override
	public List<ProductVO> selectPackages(Criteria cri) throws Exception {
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		
		bbsList = sqlSession.selectList(namespace+".selectPackages", cri);
		
		return bbsList;
	} // selectPackages

	
	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {
	
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = sqlSession.selectList(namespace+".lookup", vo);
		
		return bbsList;
	} // lookup
	
	
	/* 패키지 상품 게시물 조회 */
	@Override
	public List<ProductVO> oneProduct(ProductVO vo) throws Exception {
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		bbsList = sqlSession.selectList(namespace+".oneProduct", vo);
		
		return bbsList;
	} // oneProduct


}