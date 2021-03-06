package com.spring.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	
	
	/* 해쉬태그 전체 게시글 갯수 조회 */
	@Override
	public int countHashtag() throws Exception {
		
		int count = bdao.countHashtag();
		
		return count;
	} // countHashtag


	/* 자유골프 전체 게시글 갯수 조회 */
	@Override
	public int countFreegolf() throws Exception {
		
		int count = bdao.countFreegolf();
		
		return count;
	} // countFreegolf
	
	
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
	
	
	/* 해쉬태그 전체 게시글 조회 */
	@Override
	public List<ProductVO> selectHashtag(Criteria cri) throws Exception {
		
		List<ProductVO> tagList = bdao.selectHashtag(cri);
		
		return tagList;
	} // selectHashtag
	
	
	/* 자유골프 전체 게시글 조회 */
	@Override
	public List<ProductVO> selectFreegolf(Criteria cri) throws Exception {
		
		List<ProductVO> freeList = bdao.selectFreegolf(cri);
		
		return freeList;
	} // selectFreegolf
	

	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.lookup(vo);
		
		return bbsList;
	} // lookup
	
	
	/* 상품 리뷰 조회 */
	@Override
	public List<ReviewVO> review_lookup(ReviewVO vo) throws Exception {
		
		List<ReviewVO> revList = new ArrayList<ReviewVO>();
		revList = bdao.review_lookup(vo);
		
		return revList;
	} // review_lookup
	
	
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

	
	/* 자유골프 조회 */
	@Override
	public List<ProductVO> oneFreegolf(ProductVO vo) throws Exception {
		List<ProductVO> freeList = new ArrayList<ProductVO>();
		freeList = bdao.oneFreegolf(vo);
		
		return freeList;
	} // oneFreegolf

	
	/* 상품평점/별점 등록 */
	@Override
	public void addComment(CommentVO vo) throws Exception {

		bdao.addComment(vo);
		
	} // addComment
	
	
	/* 상품 리뷰 등록 */
	@Override
	public void addReview(ReviewVO vo) throws Exception {
		
		bdao.addReview(vo);
		
	} // addReview


	/* 여행자 내역 가져오기 */
	@Override
	public List<TravelerVO> getTraveler(int idx) throws Exception {

		List<TravelerVO> travelList = new ArrayList<TravelerVO>();
		travelList = bdao.getTraveler(idx);
		
		return travelList;
	} // getTraveler


	/* 패키지 상품 전체 이미지 출력 */
	@Override
	public List<Map<String, Object>> getPdImgList(Criteria cri) throws Exception {

		List<Map<String, Object>> list = bdao.getPdImgList(cri);
		
		return list;
	} // getPdImgList
	
	
	/* 이벤트/기획전 전체 이미지 출력 */
	@Override
	public List<Map<String, Object>> getEventImgList(Criteria cri) throws Exception {
		
		List<Map<String, Object>> list = bdao.getEventImgList(cri);
		
		return list;
	} // getEventImgList
	
	
	/* 회원권 전체 이미지 출력 */
	@Override
	public List<Map<String, Object>> getMSImgList(Criteria cri) throws Exception {
		
		List<Map<String, Object>> list = bdao.getMSImgList(cri);
		
		return list;
	} // getMSImgList
	
	
	/* 아카데미 전체 이미지 출력 */
	@Override
	public List<Map<String, Object>> getACAImgList(Criteria cri) throws Exception {
		
		List<Map<String, Object>> list = bdao.getACAImgList(cri);
		
		return list;
	} // getACAImgList
	
	
	/* 패키지 상품 한 개 이미지 출력 */
	@Override
	public List<Map<String, Object>> getPdOneImg(ProductVO vo) throws Exception {
		
		List<Map<String, Object>> list = bdao.getPdOneImg(vo);
		
		return list;
	} // getPdOneImg

}