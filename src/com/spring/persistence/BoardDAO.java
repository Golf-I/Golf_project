package com.spring.persistence;

import java.util.List;
import java.util.Map;

import com.spring.domain.AcademyVO;
import com.spring.domain.BoardVO;
import com.spring.domain.CommentVO;
import com.spring.domain.Criteria;
import com.spring.domain.EventVO;
import com.spring.domain.ItineraryVO;
import com.spring.domain.MembershipVO;
import com.spring.domain.NoReservationVO;
import com.spring.domain.ProductVO;
import com.spring.domain.ReviewVO;
import com.spring.domain.TravelerVO;

public interface BoardDAO {

	public int countNotice() throws Exception; // 공지사항 전체 게시글 갯수 조회

	public int countQnA() throws Exception; // 자주묻는질문 전체 게시글 갯수 조회

	public int countPackage() throws Exception; // 패키지 상품 전체 게시글 갯수 조회
	
	public int countComment(CommentVO vo) throws Exception; // 상품별점/평점 전체 게시글 갯수 조회
	
	public int countReview(ReviewVO vo) throws Exception; // 상품리뷰 전체 게시글 갯수 조회

	public int countMembership() throws Exception; // 회원권 전체 게시글 갯수 조회

	public int countAcademy() throws Exception; // 아카데미 전체 게시글 갯수 조회
	
	public int countEvent() throws Exception; // 이벤트 전체 게시글 갯수 조회
	
	public int countHashtag() throws Exception; // 해쉬태그 목록 전체 게시글 갯수 조회
	
	public int countFreegolf() throws Exception; // 자유골프 목록 전체 게시글 갯수 조회
	
	public List<BoardVO> selectNotice(Criteria cri) throws Exception; // 공지사항 전체 게시글 조회

	public List<BoardVO> selectQnA(Criteria cri) throws Exception; // 자주묻는질문 전체 게시글 조회
	
	public List<ProductVO> selectPackages(Criteria cri) throws Exception; // 패키지 상품 총 게시물 조회
	
	public List<MembershipVO> selectMembership(Criteria cri) throws Exception; // 회원권 총 게시물 조회
	
	public List<AcademyVO> selectAcademy(Criteria cri) throws Exception; // 아카데미 총 게시물 조회
	
	public List<EventVO> selectEvent(Criteria cri) throws Exception; // 아카데미 총 게시물 조회
	
	public List<ProductVO> selectHashtag(Criteria cri) throws Exception; // 해쉬태그 총 게시물 조회
	
	public List<ProductVO> selectFreegolf(Criteria cri) throws Exception; // 자유골프 총 게시물 조회
	
	public List<BoardVO> lookup(BoardVO vo) throws Exception; // 게시물 조회
	
	public List<ReviewVO> review_lookup(ReviewVO vo) throws Exception; // 상품 리뷰 조회
	
	public List<ProductVO> oneProduct(ProductVO vo) throws Exception; // 패키지 상품 게시물 조회

	public List<ItineraryVO> oneItinerary(ItineraryVO vo) throws Exception; // 일정표 게시물 조회

	public List<ReviewVO> oneReview(ReviewVO vo, Criteria cri) throws Exception; // 상품리뷰 조회
	
	public List<CommentVO> oneComment(CommentVO vo, Criteria cri) throws Exception; // 상품별점/평점 조회
	
	public List<NoReservationVO> oneNoReser(NoReservationVO vo) throws Exception; // 예약불가 기간 조회

	public List<MembershipVO> oneMembership(MembershipVO vo) throws Exception; // 회원권 조회
	
	public List<AcademyVO> oneAcademy(AcademyVO vo) throws Exception; // 아카데미 조회
	
	public List<EventVO> oneEvent(EventVO vo) throws Exception; // 아카데미 조회
	
	public List<ProductVO> oneFreegolf(ProductVO vo) throws Exception; // 자유골프 조회
	
	public void addComment(CommentVO vo) throws Exception; // 상품별점/평점 등록
	
	public List<TravelerVO> getTraveler(int idx) throws Exception; // 여행자 내역 등록
	
	public List<Map<String, Object>> getPdImgList(Criteria cri) throws Exception; // 패키지 상품 전체 이미지 출력
	
	public List<Map<String, Object>> getEventImgList(Criteria cri) throws Exception; // 이벤트 전체 이미지 출력

	public List<Map<String, Object>> getMSImgList(Criteria cri) throws Exception; // 회원권 전체 이미지 출력
	
	public List<Map<String, Object>> getACAImgList(Criteria cri) throws Exception; // 아카데미 전체 이미지 출력
	
	public List<Map<String, Object>> getPdOneImg(ProductVO vo) throws Exception; // 패키지 상품 한 개 이미지 출력

}