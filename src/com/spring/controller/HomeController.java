package com.spring.controller;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.domain.AcademyVO;
import com.spring.domain.BoardVO;
import com.spring.domain.CommentVO;
import com.spring.domain.Criteria;
import com.spring.domain.EventVO;
import com.spring.domain.ItineraryVO;
import com.spring.domain.MemberVO;
import com.spring.domain.MembershipVO;
import com.spring.domain.NoReservationVO;
import com.spring.domain.PageMaker;
import com.spring.domain.ProductVO;
import com.spring.domain.ReviewVO;
import com.spring.domain.TravelerVO;
import com.spring.service.BoardService;
import com.spring.service.CategoryService;
import com.spring.service.MemberService;
import com.spring.service.ReservationService;

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
	private CategoryService cservice;

	@Inject
	private BoardService bservice;
	
	@Inject
	private ReservationService rservice;

	
	/* 메인 화면 페이지 호출 */
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String mainPage(Locale locale, Model model) {
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
	public String naverlogin(MemberVO vo, Model model) {
		
		model.addAttribute("vo", vo);

		return "member/naverloginCallback.tiles";
	}
	
	/* 네이버 모바일로그인 콜백 호출 */
	@RequestMapping(value = "mobilenaverlogin", method = RequestMethod.GET)
	public String mobilenaverlogin(MemberVO vo, Model model) {
		
		model.addAttribute("vo", vo);
		
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

		// 회원정보 가져오기
		model.addAttribute("mvo", mservice.memberGetInfo(id));

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
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bservice.selectNotice(cri);

		model.addAttribute("bbsList", bbsList);
		model.addAttribute("pageMaker", pageMaker);

		return "member/member_notice.tiles";
	}

	/* 마이페이지 공지사항 상세 페이지 호출 */
	@RequestMapping(value = "notice_detail", method = RequestMethod.GET)
	public String notice_detail(BoardVO vo, Model model) throws Exception {

		model.addAttribute("bbsList", bservice.lookup(vo));

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
	public String member_reservations(Model model, HttpSession session) throws Exception {
		
		String id = (String) session.getAttribute("id");
		model.addAttribute("reserList", rservice.getReservation(id));
		
		return "member/member_reservationList.tiles";
	}
	
	/* 마이페이지 예약리스트-확정서 페이지 호출 */
	@RequestMapping(value = "member_confirmation", method = RequestMethod.GET)
	public String member_reservation_confirmation(ProductVO pvo, ItineraryVO ivo, TravelerVO tvo,
												HttpSession session, 
												Model model, HttpServletRequest req) throws Exception {
		
		String id = (String) session.getAttribute("id");
		int idx = Integer.parseInt(req.getParameter("idx"));
		
		model.addAttribute("reserList", rservice.oneReservation(id, idx));
		model.addAttribute("pdList", bservice.oneProduct(pvo));
		model.addAttribute("itiList", bservice.oneItinerary(ivo));
		model.addAttribute("traList", bservice.getTraveler(idx));
		
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
		return "member/member_nameChange.jsp";
	}

	/* 마이페이지 비밀번호 변경 페이지 호출 */
	@RequestMapping(value = "mypage_phone", method = RequestMethod.GET)
	public String myPage_Phonechange() {
		return "member/member_phoneChange.jsp";
	}

	/* 마이페이지 광고성 정보 수신 동의 페이지 호출 */
	@RequestMapping(value = "mypage_ad", method = RequestMethod.GET)
	public String myPage_Advertisement() {
		return "member/member_advertisementAgree.jsp";
	}

	/* 마이페이지 광고성 개인정보 수집 동의 페이지 호출 */
	@RequestMapping(value = "mypage_info", method = RequestMethod.GET)
	public String myPage_Information() {
		return "member/member_informationAgree.jsp";
	}

	/* 마이페이지 회원 탈퇴 페이지 호출 */
	@RequestMapping(value = "mypage_secede", method = RequestMethod.GET)
	public String secedePage() {
		return "member/member_secede.tiles";
	}

	/* 패키지 상품 목록 페이지 호출 */
	@RequestMapping(value = "category", method = RequestMethod.GET)
	public String categoryPage(Criteria cri, Model model, HttpServletResponse response) throws Exception {
		
		int total = bservice.countPackage();

		/* 이미지 출력 */
		List<Map<String, Object>> resultList = null;
		List<String> paramList = new ArrayList<String>();
		
		logger.info("resultList :" + resultList);
		
		try {
			
			resultList = bservice.getPdImgList(cri);
			model.addAttribute("resultList", resultList);

			Iterator<Map<String, Object>> itr = resultList.iterator();
			
			while(itr.hasNext()) {
				
				Map<String, Object> element = (Map<String, Object>)itr.next();
				byte[] encoded = Base64.encodeBase64((byte[])element.get("img")); 
				String encodedString = new String(encoded);
				element.put("base64", encodedString);
				paramList.add(encodedString);
				logger.debug("fileinfo : " + encodedString);
				model.addAttribute("image", paramList);
			}
		 			
		} catch(Exception e) {
			e.printStackTrace();
		}
		/* 이미지 출력 */
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(total);

		model.addAttribute("bbsList", bservice.selectPackages(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("total", total);
		
		return "category/category_list.tiles";
	}

	/* 가격/상품정보 페이지 호출 */
	@RequestMapping(value = "product_detail", method = RequestMethod.GET)
	public String product_detail(ProductVO pvo, ReviewVO rvo, CommentVO cvo, 
								ItineraryVO ivo, NoReservationVO nrvo,
								Criteria cri, Model model) throws Exception {
		
		/* 이미지 출력 */
		List<Map<String, Object>> resultList = null;
		List<String> paramList = new ArrayList<String>();
		List<String> paramList2 = new ArrayList<String>();
		List<String> paramList3 = new ArrayList<String>();
		List<String> paramList4 = new ArrayList<String>();
		List<String> paramList5 = new ArrayList<String>();
		List<String> paramList6 = new ArrayList<String>();
		
		try {
			
			resultList = bservice.getPdOneImg(pvo);
			model.addAttribute("resultList", resultList);
			
			Iterator<Map<String, Object>> itr = resultList.iterator();
			
			while(itr.hasNext()) {
				
				Map<String, Object> element = (Map<String, Object>)itr.next();
				
				byte[] encoded = Base64.encodeBase64((byte[])element.get("img")); 
				byte[] encoded2 = Base64.encodeBase64((byte[])element.get("serveimg")); 
				byte[] encoded3 = Base64.encodeBase64((byte[])element.get("golf_img1")); 
				byte[] encoded4 = Base64.encodeBase64((byte[])element.get("golf_img2")); 
				byte[] encoded5 = Base64.encodeBase64((byte[])element.get("hotel_img1")); 
				byte[] encoded6 = Base64.encodeBase64((byte[])element.get("hotel_img2")); 
				
				String encodedString = new String(encoded);
				String encodedString2 = new String(encoded2);
				String encodedString3 = new String(encoded3);
				String encodedString4 = new String(encoded4);
				String encodedString5 = new String(encoded5);
				String encodedString6 = new String(encoded6);
				
				element.put("base64", encodedString);
				element.put("base64", encodedString2);
				element.put("base64", encodedString3);
				element.put("base64", encodedString4);
				element.put("base64", encodedString5);
				element.put("base64", encodedString6);
				
				paramList.add(encodedString);
				paramList2.add(encodedString2);
				paramList3.add(encodedString3);
				paramList4.add(encodedString4);
				paramList5.add(encodedString5);
				paramList6.add(encodedString6);
				
				logger.debug("fileinfo : " + encodedString);
				
				model.addAttribute("image", paramList);
				model.addAttribute("serveimg", paramList2);
				model.addAttribute("golf_img1", paramList3);
				model.addAttribute("golf_img2", paramList4);
				model.addAttribute("hotel_img1", paramList5);
				model.addAttribute("hotel_img2", paramList6);
			}
		 			
		} catch(Exception e) {
			e.printStackTrace();
		}
		/* 이미지 출력 */
		
		int commenttotal = bservice.countComment(cvo);
		int reviewtotal = bservice.countReview(rvo);

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
		
		model.addAttribute("bbsList", bservice.oneProduct(pvo));
		model.addAttribute("itiList", bservice.oneItinerary(ivo));
		model.addAttribute("revList", bservice.oneReview(rvo, cri));
		model.addAttribute("commList", bservice.oneComment(cvo, cri));
		model.addAttribute("noResList", bservice.oneNoReser(nrvo));
		model.addAttribute("pageMaker_com", pageMaker_com);
		model.addAttribute("pageMaker_rev", pageMaker_rev);
		model.addAttribute("commenttotal", commenttotal);
		
		return "category/product_detail.tiles";
	}

	/* 예약하기 페이지 호출 */
	@RequestMapping(value = "reservation", method = RequestMethod.GET)
	public String reservation(ProductVO vo, Model model) throws Exception {
		
		model.addAttribute("bbsList", bservice.oneProduct(vo));
		
		return "reservation/reservation.tiles";
	}

	/* 예약하기 완료 페이지 호출 */
	@RequestMapping(value = "reservation_complete", method = RequestMethod.GET)
	public String reservation_complete() {
		return "reservation/reservation_complete.tiles";
	}

	/* 상품 리뷰 새창 페이지 호출 */
	@RequestMapping(value = "detail_review", method = RequestMethod.GET)
	public String product_detail(Model model, ReviewVO vo) throws Exception{
		
		model.addAttribute("revList", bservice.review_lookup(vo));
		
		return "category/product_review.jsp";
	}
	
	/* 상품 리뷰 작성 페이지 호출 */
	@RequestMapping(value = "review_write", method = RequestMethod.GET)
	public String product_review_write() {
		return "category/product_review_write.jsp";
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
	public String eventPage(Criteria cri, Model model) throws Exception {
		
		int total = bservice.countEvent();

		/* 이미지 출력 */
		List<Map<String, Object>> resultList = null;
		List<String> paramList = new ArrayList<String>();
		
		try {
			
			resultList = bservice.getEventImgList(cri);
			model.addAttribute("resultList", resultList);

			Iterator<Map<String, Object>> itr = resultList.iterator();
			
			while(itr.hasNext()) {
				
				Map<String, Object> element = (Map<String, Object>)itr.next();
				byte[] encoded = Base64.encodeBase64((byte[])element.get("img1")); 
				String encodedString = new String(encoded);
				element.put("base64", encodedString);
				paramList.add(encodedString);
				logger.debug("fileinfo : " + encodedString);
				model.addAttribute("image", paramList);
			}
		 			
		} catch(Exception e) {
			e.printStackTrace();
		}
		/* 이미지 출력 */
		
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(total);

		model.addAttribute("eventList", bservice.selectEvent(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("total", total);
		
		return "category/event_list.tiles";
	}

	/* 이벤트 상세 페이지 호출 */
	@RequestMapping(value = "event_detail", method = RequestMethod.GET)
	public String event_detail(Model model, EventVO vo) throws Exception{
		
		model.addAttribute("eventList", bservice.oneEvent(vo));
		
		return "category/event_detail.tiles";
	}

	/* 회원권 페이지 호출 */
	@RequestMapping(value = "membership", method = RequestMethod.GET)
	public String membership_list(Model model, Criteria cri) throws Exception {

		int total = bservice.countMembership();

		/* 이미지 출력 */
		List<Map<String, Object>> resultList = null;
		List<String> paramList = new ArrayList<String>();
		
		logger.info("resultList :" + resultList);
		
		try {
			
			resultList = bservice.getMSImgList(cri);
			model.addAttribute("resultList", resultList);

			Iterator<Map<String, Object>> itr = resultList.iterator();
			
			while(itr.hasNext()) {
				
				Map<String, Object> element = (Map<String, Object>)itr.next();
				byte[] encoded = Base64.encodeBase64((byte[])element.get("img")); 
				String encodedString = new String(encoded);
				element.put("base64", encodedString);
				paramList.add(encodedString);
				logger.debug("fileinfo : " + encodedString);
				model.addAttribute("image", paramList);
			}
		 			
		} catch(Exception e) {
			e.printStackTrace();
		}
		/* 이미지 출력 */
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(total);

		model.addAttribute("membershipList", bservice.selectMembership(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("total", total);

		return "category/membership_list.tiles";
	}

	/* 회원권 상세 페이지 호출 */
	@RequestMapping(value = "membership_detail", method = RequestMethod.GET)
	public String membership_detail(MembershipVO vo, Model model) throws Exception {
		
		model.addAttribute("membershipList", bservice.oneMembership(vo));
		
		return "category/membership_detail.tiles";
	}

	/* 아카데미 페이지 호출 */
	@RequestMapping(value = "academy", method = RequestMethod.GET)
	public String academy_list(Criteria cri, Model model) throws Exception{
		
		int total = bservice.countAcademy();

		/* 이미지 출력 */
		List<Map<String, Object>> resultList = null;
		List<String> paramList = new ArrayList<String>();
		
		logger.info("resultList :" + resultList);
		
		try {
			
			resultList = bservice.getACAImgList(cri);
			model.addAttribute("resultList", resultList);

			Iterator<Map<String, Object>> itr = resultList.iterator();
			
			while(itr.hasNext()) {
				
				Map<String, Object> element = (Map<String, Object>)itr.next();
				byte[] encoded = Base64.encodeBase64((byte[])element.get("img1")); 
				String encodedString = new String(encoded);
				element.put("base64", encodedString);
				paramList.add(encodedString);
				logger.debug("fileinfo : " + encodedString);
				model.addAttribute("image", paramList);
			}
		 			
		} catch(Exception e) {
			e.printStackTrace();
		}
		/* 이미지 출력 */
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(total);

		model.addAttribute("academyList", bservice.selectAcademy(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("total", total);
		
		return "category/academy_list.tiles";
	}

	/* 아카데미 상세 페이지 호출 */
	@RequestMapping(value = "academy_detail", method = RequestMethod.GET)
	public String academy_detail(Model model, AcademyVO vo) throws Exception {
		
		model.addAttribute("academyList", bservice.oneAcademy(vo));
		
		return "category/academy_detail.tiles";
	}

	/* 회원권&아카데미 상담 신청 페이지 호출 */
	@RequestMapping(value = "consulting", method = RequestMethod.GET)
	public String consultingForm() {
		return "category/consulting_form.jsp";
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
