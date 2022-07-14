package com.spring.persistence;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.AcademyVO;
import com.spring.domain.BoardVO;
import com.spring.domain.CommentVO;
import com.spring.domain.Criteria;
import com.spring.domain.EventVO;
import com.spring.domain.InquireVO;
import com.spring.domain.ItineraryVO;
import com.spring.domain.MembershipVO;
import com.spring.domain.NoReservationVO;
import com.spring.domain.ProductVO;
import com.spring.domain.PromotionVO;
import com.spring.domain.ReviewVO;
import com.spring.domain.TravelerVO;


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
	public int countComment(CommentVO cvo) throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countComment", cvo);
		
		return count;
	} // countComment
	
	
	/* 상품리뷰 전체 게시글 갯수 조회 */
	@Override
	public int countReview(ReviewVO rvo) throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countReview", rvo);
		
		return count;
	} // countReview
	
	
	/* 회원권 전체 게시글 갯수 조회 */
	@Override
	public int countMembership() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countMembership");
		
		return count;
	} // countMembership
	
	
	/* 아카데미 전체 게시글 갯수 조회 */
	@Override
	public int countAcademy() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countAcademy");
		
		return count;
	} // countAcademy
	
	
	/* 이벤트 전체 게시글 갯수 조회 */
	@Override
	public int countEvent() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countEvent");
		
		return count;
	} // countEvent

	
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

	
	/* 회원권 전체  게시글 조회 */
	@Override
	public List<MembershipVO> selectMembership(Criteria cri) throws Exception {

		List<MembershipVO> membershipList = sqlSession.selectList(namespace+".selectMembership", cri);
		
		return membershipList;
	} // selectMembership
	
	
	/* 회원권 전체  게시글 조회 */
	@Override
	public List<AcademyVO> selectAcademy(Criteria cri) throws Exception {
		
		List<AcademyVO> academyList = sqlSession.selectList(namespace+".selectAcademy", cri);
		
		return academyList;
	} // selectMembership
	
	
	/* 이벤트 전체 게시글 조회 */
	@Override
	public List<EventVO> selectEvent(Criteria cri) throws Exception {
		
		List<EventVO> eventList = sqlSession.selectList(namespace+".selectEvent", cri);
		
		return eventList;
	} // selectEvent
	
	
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

	
	/* 일정표 게시물 조회 */
	@Override
	public List<ItineraryVO> oneItinerary(ItineraryVO vo) throws Exception {
		
		List<ItineraryVO> itiList = new ArrayList<ItineraryVO>();
		itiList = sqlSession.selectList(namespace+".oneItinerary", vo);
//		System.out.println("DAOImpl : " + bbsList);
		
		return itiList;
	} // oneItinerary
	
	
	/* 상품리뷰 조회 */
	@Override
	public List<ReviewVO> oneReview(ReviewVO vo, Criteria cri) throws Exception {
		
		List<ReviewVO> revList = new ArrayList<ReviewVO>();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("product_code", vo.getProduct_code());
		paramMap.put("pageStart", cri.getPageStart());
		paramMap.put("perPageNum", cri.getPerPageNum());
		
		revList = sqlSession.selectList(namespace+".oneReview", paramMap);
//		System.out.println("DAOImpl : " + revList);
		
		return revList;
	} // oneReview

	
	/* 상품별점/평점 조회 */
	@Override
	public List<CommentVO> oneComment(CommentVO vo, Criteria cri) throws Exception {
		
		List<CommentVO> commList = new ArrayList<CommentVO>();
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("product_code", vo.getProduct_code());
		paramMap.put("pageStart", cri.getPageStart());
		paramMap.put("perPageNum", cri.getPerPageNum());
		
		commList = sqlSession.selectList(namespace+".oneComment", paramMap);
//		System.out.println("DAOImpl : " + commList);
		
		return commList;
	} // oneComment

	
	/* 예약불가 기간 조회 */
	@Override
	public List<NoReservationVO> oneNoReser(NoReservationVO vo) throws Exception {
		
		List<NoReservationVO> noResList = new ArrayList<NoReservationVO>();
		noResList = sqlSession.selectList(namespace+".oneNoReser", vo);
//		System.out.println("DAOImpl : " + bbsList);
		
		return noResList;
	} // oneNoReser
	
	
	/* 회원권 조회 */
	@Override
	public List<MembershipVO> oneMembership(MembershipVO vo) throws Exception {
		
		List<MembershipVO> membershipList = new ArrayList<MembershipVO>();
		membershipList = sqlSession.selectList(namespace+".oneMembership", vo);
		
		return membershipList;
	} // oneMembership
	
	
	/* 아카데미 조회 */
	@Override
	public List<AcademyVO> oneAcademy(AcademyVO vo) throws Exception {
		
		List<AcademyVO> academyList = new ArrayList<AcademyVO>();
		academyList = sqlSession.selectList(namespace+".oneAcademy", vo);
		
		return academyList;
	} // oneAcademy
	
	
	/* 아카데미 조회 */
	@Override
	public List<EventVO> oneEvent(EventVO vo) throws Exception {
		
		List<EventVO> eventList = new ArrayList<EventVO>();
		eventList = sqlSession.selectList(namespace+".oneEvent", vo);
		
		return eventList;
	} // oneEvent


	/* 상품별점/평점 등록 */
	@Override
	public void addComment(CommentVO vo) throws Exception {

		sqlSession.insert(namespace+".addComment", vo);
		
	} // addComment


	/* 여행자 내역 가져오기 */
	@Override
	public List<TravelerVO> getTraveler(int idx) throws Exception {

		List<TravelerVO> travelList = new ArrayList<TravelerVO>();
		travelList = sqlSession.selectList(namespace+".getTraveler", idx);
		
		return travelList;
	} // getTraveler


}