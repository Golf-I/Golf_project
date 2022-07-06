package com.spring.service;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.CommentVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItineraryVO;
import com.spring.domain.NoReservationVO;
import com.spring.domain.ProductVO;
import com.spring.domain.ReviewVO;

public interface BoardService {

	public int countNotice() throws Exception; // 공지사항 게시물 총 갯수

	public int countQnA() throws Exception; // 자주묻는질문 게시물 총 갯수

	public int countPackage() throws Exception; // 패키지 상품 게시물 총 갯수
	
	public int countComment() throws Exception; // 상품별점/평점 전체 게시글 갯수 조회
	
	public int countReview() throws Exception; // 상품리뷰 전체 게시글 갯수 조회

	public List<BoardVO> selectNotice(Criteria cri) throws Exception; // 공지사항 페이징 총 게시물 조회

	public List<BoardVO> selectQnA(Criteria cri) throws Exception; // 자주묻는질문 페이징 총 게시물 조회
	
	public List<ProductVO> selectPackages(Criteria cri) throws Exception; // 패키지 상품 총 게시물 조회
	
	public List<BoardVO> lookup(BoardVO vo) throws Exception; // 게시물 조회

	public List<ProductVO> oneProduct(ProductVO vo) throws Exception; // 상품 게시물 조회

	public List<ItineraryVO> oneItinerary(ItineraryVO vo) throws Exception; 

	public List<ReviewVO> oneReview(ReviewVO vo) throws Exception; 
	
	public List<CommentVO> oneComment(CommentVO vo) throws Exception; 
	
	public List<NoReservationVO> oneNoReser(NoReservationVO vo) throws Exception; 

}