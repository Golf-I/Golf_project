package com.spring.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.domain.BoardVO;
import com.spring.domain.CommentVO;
import com.spring.domain.Criteria;
import com.spring.domain.ItineraryVO;
import com.spring.domain.MemberVO;
import com.spring.domain.NoReservationVO;
import com.spring.domain.PageMaker;
import com.spring.domain.ProductVO;
import com.spring.domain.ReviewVO;
import com.spring.service.BoardService;
import com.spring.service.CategoryService;
import com.spring.service.MemberService;

/**
 * Servlet implementation class HomeController
 */

@Controller // 컨트롤러 어노테이션
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 * 
	 *      public HomeController() { super(); // TODO Auto-generated constructor
	 *      stub }
	 */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * 
	 *      protected void doGet(HttpServletRequest request, HttpServletResponse
	 *      response) throws ServletException, IOException { // TODO Auto-generated
	 *      method stub
	 *      response.getWriter().append("Served at: ").append(request.getContextPath());
	 * 
	 *      }
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * 
	 *      protected void doPost(HttpServletRequest request, HttpServletResponse
	 *      response) throws ServletException, IOException { // TODO Auto-generated
	 *      method stub doGet(request, response); }
	 */

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private MemberService mservice;

	@Inject
	private CategoryService iservice;

	@Inject
	private BoardService bservice;

	/* 메인 화면 페이지 호출 */
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String mainPage(Locale locale, Model model) {
		// logger.info("-- test");
		return "main.tiles"; // tiles.xml의 <definition name="main" extends="base">을 리턴시킨다
	}
	
	/* 타일즈 포함하지 않는 화면 페이지 호출 */
	@RequestMapping(value = "empty", method = RequestMethod.GET)
	public String notLayoutPage() {
		return "empty"; 
	}

	/* 회원가입1 화면 페이지 호출 */
	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signUp1Page() {
		return "member/member_signup1.tiles";
	}

	/* 회원가입2 화면 페이지 호출 */
	@RequestMapping(value = "signup_", method = RequestMethod.POST)
	public String signUp2Page(HttpServletRequest req, MemberVO vo, Model model) {
		String id = req.getParameter("id");
		String sns = req.getParameter("sns");
		String gender = req.getParameter("gender");
		String birth = req.getParameter("birth");
//		logger.info(":::::::: id = "+ id + sns + gender + birth);
		model.addAttribute("vo", vo);

		return "member/member_signup2.tiles";
	}

	/* 회원가입 완료 화면 페이지 호출 */
	@RequestMapping(value = "signup_complete", method = RequestMethod.GET)
	public String signUpComPage() {
		return "member/member_signup_complete.tiles";
	}

	/* 로그인 화면 페이지 호출 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginPage() {
		return "member/member_signin.tiles";
	}

	/* 네이버 로그인 콜백 호출 */
	@RequestMapping(value = "naverlogin", method = RequestMethod.GET)
	public String naverlogin(HttpSession session, HttpServletRequest req, MemberVO vo, Model model) {
		model.addAttribute("vo", vo);
//		logger.info("#naverlogin vo : " + vo);
		return "member/naverloginCallback.tiles";
	}

	/* 아이디 찾기 페이지 호출 */
	@RequestMapping(value = "findid", method = RequestMethod.GET)
	public String findIdPage() {
		return "member/member_findId.tiles";
	}

	/* 아이디 찾기 완료 페이지 호출 */
	@RequestMapping(value = "findid_complete", method = RequestMethod.GET)
	public String findIdPage_complete() {
		return "member/member_findId_complete.tiles";
	}

	/* 비밀번호 찾기 페이지 호출 */
	@RequestMapping(value = "findpw", method = RequestMethod.GET)
	public String findPwPage() {
		return "member/member_findPw.tiles";
	}

	/* 마이페이지 프로필관리 페이지 호출 */
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String myPage(Model model, HttpSession session) throws Exception {

		String id = (String) session.getAttribute("id");
//		logger.info("memcont id : " + id);

		// 회원정보 가져오기
		MemberVO mvo = mservice.memberGetInfo(id);
		model.addAttribute("mvo", mvo);

		return "member/member_mypage.tiles";
	}

	/* 마이페이지 공지사항 페이지 호출 */
	@RequestMapping(value = "notice", method = RequestMethod.GET)

	public String notice(BoardVO bvo, Criteria cri, Model model) throws Exception {

		int total = bservice.countNotice();
		logger.info("bvo : " + bvo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(total);
//		logger.info("cri : " + cri.getPage() + " " + cri.getPageStart() + " " + cri.getPerPageNum());
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bservice.selectNotice(cri);
//		logger.info("pageMaker : " + pageMaker);

		model.addAttribute("bbsList", bbsList);
		model.addAttribute("pageMaker", pageMaker);

		return "member/member_notice.tiles";
	}

	/* 마이페이지 공지사항 상세 페이지 호출 */
	@RequestMapping(value = "notice_detail", method = RequestMethod.GET)
	public String notice_detail(BoardVO vo, Model model) throws Exception {

		model.addAttribute("bbsList", bservice.lookup(vo));
		logger.info("ddd : " + vo);

		return "member/member_notice_detail.tiles";
	}

	/* 마이페이지 자주묻는 질문 페이지 호출 */
	@RequestMapping(value = "questions", method = RequestMethod.GET)
	public String questions(Criteria cri, Model model) throws Exception {

		int total = bservice.countQnA();

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(total);

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bservice.selectQnA(cri);
		logger.info("pageMaker : " + pageMaker);

		model.addAttribute("bbsList", bbsList);
		model.addAttribute("pageMaker", pageMaker);

		return "member/member_questions.tiles";
	}

	/* 마이페이지 예약리스트 페이지 호출 */
	@RequestMapping(value = "member_reservation", method = RequestMethod.GET)
	public String member_reservations() {
		return "member/member_reservationList.tiles";
	}
	
	/* 마이페이지 예약리스트-확정서 페이지 호출 */
	@RequestMapping(value = "member_confirmation", method = RequestMethod.GET)
	public String member_reservations_confirmation() {
		return "member/member_confirmationLetter.jsp";
	}

	/* 마이페이지 이전 비밀번호 확인 페이지 호출 */
	@RequestMapping(value = "mypage_pre", method = RequestMethod.GET)
	public String myPage_Previous() {
		return "member/member_mypagePrevious.tiles";
	}

	/* 마이페이지 이름 변경 페이지 호출 */
	@RequestMapping(value = "mypage_name", method = RequestMethod.GET)
	public String myPage_Namechange() {
//		return "member/member_nameChange.tiles";
		return "member/member_nameChange.jsp";
	}

	/* 마이페이지 비밀번호 변경 페이지 호출 */
	@RequestMapping(value = "mypage_phone", method = RequestMethod.GET)
	public String myPage_Phonechange() {
//		return "member/member_phoneChange.tiles";
		return "member/member_phoneChange.jsp";
	}

	/* 마이페이지 광고성 정보 수신 동의 페이지 호출 */
	@RequestMapping(value = "mypage_ad", method = RequestMethod.GET)
	public String myPage_Advertisement() {
//		return "member/member_advertisementAgree.tiles";
		return "member/member_advertisementAgree.jsp";
	}

	/* 마이페이지 광고성 개인정보 수집 동의 페이지 호출 */
	@RequestMapping(value = "mypage_info", method = RequestMethod.GET)
	public String myPage_Information() {
//		return "member/member_informationAgree.tiles";
		return "member/member_informationAgree.jsp";
	}

	/* 마이페이지 회원 탈퇴 페이지 호출 */
	@RequestMapping(value = "mypage_secede", method = RequestMethod.GET)
	public String secedePage() {
		return "member/member_secede.tiles";
	}

	/* 패키지 상품 목록 페이지 호출 */
	@RequestMapping(value = "category", method = RequestMethod.GET)
	public String categoryPage(Criteria cri, Model model) throws Exception {
		
		int total = bservice.countPackage();

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(total);

//		List<ProductVO> bbsList = new ArrayList<ProductVO>();
//		bbsList = bservice.selectPackages(cri);
//		logger.info("bbsList : " + bbsList);
		
//		model.addAttribute("bbsList", bbsList);
		model.addAttribute("bbsList", bservice.selectPackages(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("total", total);
		
		return "category/category_list.tiles";
	}

	/* 가격/상품정보 페이지 호출 */
	@RequestMapping(value = "product_detail", method = RequestMethod.GET)
	public String product_detail(ProductVO pvo, ReviewVO rvo, CommentVO cvo, ItineraryVO ivo, NoReservationVO nrvo,
								Criteria cri, Model model) throws Exception {
//		logger.info("@@@@@@@@@@@@@ vo : " + vo);
		
		int commenttotal = bservice.countComment(cvo);
		int reviewtotal = bservice.countReview(rvo);
		logger.info("commenttotal : " + commenttotal + " / reviewtotal : " + reviewtotal + " / cri : " + cri.getPage());
		PageMaker pageMaker_com = new PageMaker();
		pageMaker_com.setCri(cri);
		pageMaker_com.setTotalCount(commenttotal);
		
		PageMaker pageMaker_rev = new PageMaker();
		pageMaker_rev.setCri(cri);
		pageMaker_rev.setTotalCount(reviewtotal);
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		List<ItineraryVO> itiList = new ArrayList<ItineraryVO>();
		List<ReviewVO> revList = new ArrayList<ReviewVO>();
		List<CommentVO> commList = new ArrayList<CommentVO>();
		List<NoReservationVO> noResList = new ArrayList<NoReservationVO>();
//		bbsList = bservice.oneProduct(pvo);
//		noResList = bservice.oneNoReser(nrvo);
//		logger.info("@@@@@@@@@ " + noResList);
		
		model.addAttribute("bbsList", bservice.oneProduct(pvo));
		model.addAttribute("itiList", bservice.oneItinerary(ivo));
		model.addAttribute("revList", bservice.oneReview(rvo, cri));
		model.addAttribute("commList", bservice.oneComment(cvo, cri));
		model.addAttribute("noResList", bservice.oneNoReser(nrvo));
		model.addAttribute("pageMaker_com", pageMaker_com);
		model.addAttribute("pageMaker_rev", pageMaker_rev);
		
		return "category/product_detail.tiles";
	}

	/* 예약하기 페이지 호출 */
	@RequestMapping(value = "reservation", method = RequestMethod.GET)
	public String reservation(ProductVO pvo, Model model) throws Exception {
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		model.addAttribute("", bbsList);
		
		return "reservation/reservation.tiles";
	}

	/* 예약하기 완료 페이지 호출 */
	@RequestMapping(value = "reservation_complete", method = RequestMethod.GET)
	public String reservation_complete() {
		return "reservation/reservation_complete.tiles";
	}

	/* 확정서 페이지 호출 */
	@RequestMapping(value = "reservation_confirmation", method = RequestMethod.GET)
	public String reservation_confirmation() {
		return "reservation/reservation_confirmationLetter.tiles";
	}

	/* 상품 리뷰 새창 페이지 호출 */
	@RequestMapping(value = "detail_review", method = RequestMethod.GET)
	public String product_detail_Popup() {
//		return "category/product_review.tiles";
		return "category/product_review.jsp";
	}

	/* 해시태그 목록 페이지 호출 */
	@RequestMapping(value = "hashtag", method = RequestMethod.GET)
	public String hashtagPage() {
		return "category/hashtag_list.tiles";
	}

	/* 자유골프 목록 페이지 호출 */
	@RequestMapping(value = "freegolf", method = RequestMethod.GET)
	public String freegolfPage() {
		return "category/freegolf_list.tiles";
	}

	/* 자유골프 상세 페이지 호출 */
	@RequestMapping(value = "freegolf_detail", method = RequestMethod.GET)
	public String freegolf_detail() {
		return "category/freegolf_detail.tiles";
	}

	/* 이벤트 목록 페이지 호출 */
	@RequestMapping(value = "event", method = RequestMethod.GET)
	public String eventPage() {
		return "category/event_list.tiles";
	}

	/* 이벤트 상세 페이지 호출 */
	@RequestMapping(value = "event_detail", method = RequestMethod.GET)
	public String event_detail() {
		return "category/event_detail.tiles";
	}

	/* 회원권 페이지 호출 */
	@RequestMapping(value = "membership", method = RequestMethod.GET)
	public String membership_list() {
		return "category/membership_list.tiles";
	}

	/* 회원권 상세 페이지 호출 */
	@RequestMapping(value = "membership_detail", method = RequestMethod.GET)
	public String membership_detail() {
		return "category/membership_detail.tiles";
	}

	/* 아카데미 페이지 호출 */
	@RequestMapping(value = "academy", method = RequestMethod.GET)
	public String academy_list() {
		return "category/academy_list.tiles";
	}

	/* 아카데미 상세 페이지 호출 */
	@RequestMapping(value = "academy_detail", method = RequestMethod.GET)
	public String academy_detail() {
		return "category/academy_detail.tiles";
	}

	/* 회원권&아카데미 상담 신청 페이지 호출 */
	@RequestMapping(value = "consulting", method = RequestMethod.GET)
	public String consultingForm() {
		return "category/consulting_form.tiles";
	}

	/* 회사소개 페이지 호출 */
	@RequestMapping(value = "company", method = RequestMethod.GET)
	public String company() {
		return "bottomNavigation/company.tiles";
	}

	/* 이용약관 페이지 호출 */
	@RequestMapping(value = "terms-of-service", method = RequestMethod.GET)
	public String term_of_service() {
		return "bottomNavigation/terms_of_service.tiles";
	}
	
	/* 회원가입 이용약관 페이지 호출 */
	@RequestMapping(value = "member_term_of_service", method = RequestMethod.GET)
	public String member_term_of_service() {
		return "bottomNavigation/terms_of_service.jsp";
	}

	/* 개인정보처리방침 페이지 호출 */
	@RequestMapping(value = "privacy_policy", method = RequestMethod.GET)
	public String privacy_policy() {
		return "bottomNavigation/privacy_policy.tiles";
	}
	
	/* 개인정보처리방침 페이지 호출 */
	@RequestMapping(value = "member_privacy_policy", method = RequestMethod.GET)
	public String member_privacy_policy() {
		return "bottomNavigation/privacy_policy.jsp";
	}

	/* 여행약관 페이지 호출 */
	@RequestMapping(value = "travel-terms-and-conditions", method = RequestMethod.GET)
	public String travel_terms_and_conditions() {
		return "bottomNavigation/travel_terms_and_conditions.tiles";
	}

	/* 이메일무단수집 페이지 호출 */
	@RequestMapping(value = "unauthorized-email-collection", method = RequestMethod.GET)
	public String unauthorized_email_collection() {
//		return "bottomNavigation/unauthorized_email_collection.tiles";
		return "bottomNavigation/unauthorized_email_collection.jsp";
	}

	/* 입점 문의 페이지 호출 */
	@RequestMapping(value = "store", method = RequestMethod.GET)
	public String entering_the_store() {
		return "bottomNavigation/entering_the_store.tiles";
	}

	/* 제휴/홍보문의 페이지 호출 */
	@RequestMapping(value = "promotion", method = RequestMethod.GET)
	public String promotion() {
		return "bottomNavigation/promotion.tiles";
	}

	/* 홀세일문의 페이지 호출 */
	@RequestMapping(value = "wholesale", method = RequestMethod.GET)
	public String wholesale() {
		return "bottomNavigation/wholesale.tiles";
	}

}
