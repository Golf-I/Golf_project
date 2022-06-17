package com.spring.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
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

import com.spring.domain.MemberVO;

/**
 * Servlet implementation class HomeController
 */
@Controller // 컨트롤러 어노테이션 
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }
    */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}
	*/
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	*/
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class); // 콘솔에 Log 찍기 
	
	
    /* 메인 화면 페이지 호출 */
	@RequestMapping(value = "index", method = RequestMethod.GET)
    public String mainPage(Locale locale, Model model) {
    	//	logger.info("-- test");
    		return "main.tiles"; // tiles.xml의  <definition name="main" extends="base">을 리턴시킨다
    }
	
	/* 회원가입1 화면 페이지 호출 */
	@RequestMapping(value = "signup", method = RequestMethod.GET)
    public String signUp1Page() {
    		return "member/member_signup1.tiles"; 
    }
	
	/* 회원가입2 화면 페이지 호출 */
	@RequestMapping(value = "signup_", method = RequestMethod.POST)
    public String signUp2Page(HttpServletRequest req, MemberVO vo, Model model) {
			logger.info("@signUp2Page vo : " + vo);;
			String id = req.getParameter("id");
			logger.info(":::::::: id = "+id);
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
    public String naverlogin(HttpSession session, HttpServletRequest req,
    						 MemberVO vo, Model model) {
			model.addAttribute("vo", vo);
			logger.info("#naverlogin vo : " + vo);
			return "member/naverloginCallback.tiles";
    }
	
	/* 아이디 찾기 화면 페이지 호출 */
	@RequestMapping(value = "findid", method = RequestMethod.GET)
    public String findIdPage() {
    		return "member/member_findId.tiles";
    }

	/* 비밀번호 찾기 화면 페이지 호출 */
	@RequestMapping(value = "findpw", method = RequestMethod.GET)
    public String findPwPage() {
    		return "member/member_findPw.tiles";
    }
	
	/* 카테고리 목록 화면 페이지 호출 */
	@RequestMapping(value = "category", method = RequestMethod.GET)
    public String categoryPage() {
    		return "category/category_list.tiles";
    }
	
	/* 가격/상품정보 화면 페이지 호출 */
	@RequestMapping(value = "detail01", method = RequestMethod.GET)
    public String product_detail01() {
    		return "category/product_detail01.tiles";
    }
	
	/* 상품별점/평점 화면 페이지 호출 */
	@RequestMapping(value = "detail02", method = RequestMethod.GET)
    public String product_detail02() {
    		return "category/product_detail02.tiles";
    }
	
	/* 상품 리뷰 화면 페이지 호출 */
	@RequestMapping(value = "detail03", method = RequestMethod.GET)
    public String product_detail03() {
    		return "category/product_detail03.tiles";
    }
	
	/* 상품 리뷰 새창  페이지 호출 */
	@RequestMapping(value = "detail03_review", method = RequestMethod.GET)
    public String product_detail03_Popup() {
    		return "category/product_review.tiles";
    }
	
	/* 해시태그 목록 화면 페이지 호출 */
	@RequestMapping(value = "hashtag", method = RequestMethod.GET)
    public String hashtagPage() {
    		return "category/hashtag_list.tiles";
    }
	
	/* 자유골프 목록 화면 페이지 호출 */
	@RequestMapping(value = "freegolf", method = RequestMethod.GET)
    public String freegolfPage() {
    		return "category/freegolf_list.tiles";
    }
	
	/* 자유골프 상세페이지 호출 */
	@RequestMapping(value = "freegolf_detail", method = RequestMethod.GET)
    public String freegolf_detail() {
    		return "category/freegolf_detail.tiles";
    }
	
	/* 이벤트 목록 화면 페이지 호출 */
	@RequestMapping(value = "event", method = RequestMethod.GET)
    public String eventPage() {
    		return "category/event_list.tiles";
    }
	
	/* 이벤트 상세 페이지 호출 */
	@RequestMapping(value = "event_detail", method = RequestMethod.GET)
    public String event_detail() {
    		return "category/event_detail.tiles";
	}
	
}
