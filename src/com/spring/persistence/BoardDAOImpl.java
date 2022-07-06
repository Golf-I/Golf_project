package com.spring.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.BoardVO;
import com.spring.domain.CommentVO;
import com.spring.domain.Criteria;
import com.spring.domain.InquireVO;
import com.spring.domain.ItineraryVO;
import com.spring.domain.NoReservationVO;
import com.spring.domain.ProductVO;
import com.spring.domain.PromotionVO;
import com.spring.domain.ReviewVO;


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
	
	
	/* 상품별점/평점 전체 게시글 갯수 조회 */
	@Override
	public int countComment() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countComment");
		
		return count;
	} // countComment
	
	
	/* 상품리뷰 전체 게시글 갯수 조회 */
	@Override
	public int countReview() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countReview");
		
		return count;
	} // countReview

	
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
//		System.out.println("DAOImpl : " + bbsList);
		
		return bbsList;
	} // oneProduct
	
	@Override
	public List<ItineraryVO> oneItinerary(ItineraryVO vo) throws Exception {
		
		List<ItineraryVO> itiList = new ArrayList<ItineraryVO>();
		itiList = sqlSession.selectList(namespace+".oneItinerary", vo);
//		System.out.println("DAOImpl : " + bbsList);
		
		return itiList;
	} // oneItinerary
	@Override
	
	public List<ReviewVO> oneReview(ReviewVO vo) throws Exception {
		
		List<ReviewVO> revList = new ArrayList<ReviewVO>();
		revList = sqlSession.selectList(namespace+".oneReview", vo);
//		System.out.println("DAOImpl : " + bbsList);
		
		return revList;
	} // oneReview
	
	@Override
	public List<CommentVO> oneComment(CommentVO vo) throws Exception {
		
		List<CommentVO> commList = new ArrayList<CommentVO>();
		commList = sqlSession.selectList(namespace+".oneComment", vo);
//		System.out.println("DAOImpl : " + bbsList);
		
		return commList;
	} // oneComment
	
	@Override
	public List<NoReservationVO> oneNoReser(NoReservationVO vo) throws Exception {
		
		List<NoReservationVO> noResList = new ArrayList<NoReservationVO>();
		noResList = sqlSession.selectList(namespace+".oneNoReser", vo);
//		System.out.println("DAOImpl : " + bbsList);
		
		return noResList;
	} // oneNoReser
	/* 패키지 상품 게시물 조회 */


}