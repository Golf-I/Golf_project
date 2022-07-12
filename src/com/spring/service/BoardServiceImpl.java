package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

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
import com.spring.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO bdao;
	
	 
	/* 공지사항 전체 게시글 갯수 조회 */
	@Override
	public int countNotice() throws Exception {
		
		int count = bdao.countNotice();
		
		return count;
	} // countBoard
	
	
	/* 자주묻는 질문 전체 게시글 갯수 조회 */
	@Override
	public int countQnA() throws Exception {
		
		int count = bdao.countQnA();
		
		return count;
	} // countQnA
	
	
	/* 패키지 상품 전체 게시글 갯수 조회 */
	@Override
	public int countPackage() throws Exception {
		
		int count = bdao.countPackage();
		
		return count;
	} // countPackage
	
	
	/* 상품별점/평점 전체 게시글 갯수 조회 */
	@Override
	public int countComment(CommentVO cvo) throws Exception {
		
		int count = bdao.countComment(cvo);
		
		return count;
	} // countComment
	
	
	/* 상품리뷰 전체 게시글 갯수 조회 */
	@Override
	public int countReview(ReviewVO vo) throws Exception {
		
		int count = bdao.countReview(vo);
		
		return count;
	} // countReview
	
	
	/* 회원권 전체 게시글 갯수 조회 */
	@Override
	public int countMembership() throws Exception {
		
		int count = bdao.countMembership();
		
		return count;
	} // countMembership
	
	
	/* 아카데미 전체 게시글 갯수 조회 */
	@Override
	public int countAcademy() throws Exception {
		
		int count = bdao.countAcademy();
		
		return count;
	} // countAcademy
	
	
	/* 아카데미 전체 게시글 갯수 조회 */
	@Override
	public int countEvent() throws Exception {
		
		int count = bdao.countEvent();
		
		return count;
	} // countEvent
	
	
	/* 공지사항 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectNotice(Criteria cri) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.selectNotice(cri);
		
		return bbsList;
	} // selectNotice

	
	/* 자주묻는질문 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectQnA(Criteria cri) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.selectQnA(cri);
		
		return bbsList;
	} // selectQnA

	
	/* 패키지 상품 전체 게시글 조회 */
	@Override
	public List<ProductVO> selectPackages(Criteria cri) throws Exception {
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		bbsList = bdao.selectPackages(cri);
		
		return bbsList;
	} // selectPackages

	
	/* 회원권 전체 게시글 조회 */
	@Override
	public List<MembershipVO> selectMembership(Criteria cri) throws Exception {

		List<MembershipVO> membershipList = bdao.selectMembership(cri);

		return membershipList;
	} // selectMembership
	
	
	/* 아카데미 전체 게시글 조회 */
	@Override
	public List<AcademyVO> selectAcademy(Criteria cri) throws Exception {
		
		List<AcademyVO> academyList = bdao.selectAcademy(cri);
		
		return academyList;
	} // selectMembership
	
	
	/* 이벤트 전체 게시글 조회 */
	@Override
	public List<EventVO> selectEvent(Criteria cri) throws Exception {
		
		List<EventVO> eventList = bdao.selectEvent(cri);
		
		return eventList;
	} // selectEvent
	

	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.lookup(vo);
		
		return bbsList;
	} // lookup
	
	
	/* 상품 게시물 조회 */
	@Override
	public List<ProductVO> oneProduct(ProductVO vo) throws Exception {
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		bbsList = bdao.oneProduct(vo);
		
		return bbsList;
	} // oneProduct

	
	/* 일정표 게시물 조회 */
	@Override
	public List<ItineraryVO> oneItinerary(ItineraryVO vo) throws Exception {
		
		List<ItineraryVO> itiList = new ArrayList<ItineraryVO>();
		itiList = bdao.oneItinerary(vo);
		
		return itiList;
	} // oneItinerary

	
	/* 상품리뷰 조회 */
	@Override
	public List<ReviewVO> oneReview(ReviewVO vo, Criteria cri) throws Exception {
		
		List<ReviewVO> revList = new ArrayList<ReviewVO>();
		revList = bdao.oneReview(vo, cri);
		
		return revList;
	} // oneReview

	
	/* 상품별점/평점 조회 */
	@Override
	public List<CommentVO> oneComment(CommentVO vo, Criteria cri) throws Exception {
		
		List<CommentVO> commList = new ArrayList<CommentVO>();
		commList = bdao.oneComment(vo, cri);
		
		return commList;
	} // oneComment

	
	/* 예약불가 기간 조회 */
	@Override
	public List<NoReservationVO> oneNoReser(NoReservationVO vo) throws Exception {
		
		List<NoReservationVO> noResList = new ArrayList<NoReservationVO>();
		noResList = bdao.oneNoReser(vo);
		
		return noResList;
	} // oneNoReser
	
	
	/* 회원권 조회 */
	@Override
	public List<MembershipVO> oneMembership(MembershipVO vo) throws Exception {
		
		List<MembershipVO> membershipList = new ArrayList<MembershipVO>();
		membershipList = bdao.oneMembership(vo);
		
		return membershipList;
	} // oneMembership
	
	
	/* 아카데미 조회 */
	@Override
	public List<AcademyVO> oneAcademy(AcademyVO vo) throws Exception {
		
		List<AcademyVO> academyList = new ArrayList<AcademyVO>();
		academyList = bdao.oneAcademy(vo);
		
		return academyList;
	} // oneAcademy
	
	
	/* 이벤트 조회 */
	@Override
	public List<EventVO> oneEvent(EventVO vo) throws Exception {
		
		List<EventVO> academyList = new ArrayList<EventVO>();
		academyList = bdao.oneEvent(vo);
		
		return academyList;
	} // oneEvent

	
	/* 상품평점/별점 등록 */
	@Override
	public void addComment(CommentVO vo) throws Exception {

		bdao.addComment(vo);
		
	} // addComment


	/* 여행자 내역 가져오기 */
	@Override
	public List<TravelerVO> getTraveler(TravelerVO vo) throws Exception {

		List<TravelerVO> travelList = new ArrayList<TravelerVO>();
		travelList = bdao.getTraveler(vo);
		
		return travelList;
	} // getTraveler

}