package com.spring.persistence;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.CommentVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItineraryVO;
import com.spring.domain.NoReservationVO;
import com.spring.domain.ProductVO;
import com.spring.domain.ReviewVO;

public interface BoardDAO {

	public int countNotice() throws Exception; // 공지사항 전체 게시글 갯수 조회

	public int countQnA() throws Exception; // 자주묻는질문 전체 게시글 갯수 조회

	public int countPackage() throws Exception; // 패키지 상품 전체 게시글 갯수 조회
	
	public int countComment(CommentVO cvo) throws Exception; // 상품별점/평점 전체 게시글 갯수 조회
	
	public int countReview(ReviewVO rvo) throws Exception; // 상품리뷰 전체 게시글 갯수 조회

	public List<BoardVO> selectNotice(Criteria cri) throws Exception; // 공지사항 전체 게시글 조회

	public List<BoardVO> selectQnA(Criteria cri) throws Exception; // 자주묻는질문 전체 게시글 조회
	
	public List<ProductVO> selectPackages(Criteria cri) throws Exception; // 패키지 상품 총 게시물 조회
	
	public List<BoardVO> lookup(BoardVO vo) throws Exception; // 게시물 조회
	
	public List<ProductVO> oneProduct(ProductVO vo) throws Exception; // 패키지 상품 게시물 조회

	public List<ItineraryVO> oneItinerary(ItineraryVO vo) throws Exception; // 일정표 게시물 조회

	public List<ReviewVO> oneReview(ReviewVO vo, Criteria cri) throws Exception; // 상품리뷰 조회
	
	public List<CommentVO> oneComment(CommentVO vo, Criteria cri) throws Exception; // 상품별점/평점 조회
	
	public List<NoReservationVO> oneNoReser(NoReservationVO vo) throws Exception; // 예약불가 기간 조회
	
	public void addComment(CommentVO vo) throws Exception; // 상품별점/평점 등록

}