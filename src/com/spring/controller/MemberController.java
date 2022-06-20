package com.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.domain.MemberVO;
import com.spring.service.MemberService;


@Controller
@RequestMapping(value = "/member/*") 
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject 
	private MemberService mservice;
	
	
	/* 회원가입 처리  */
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signUp(MemberVO vo) throws Exception {
	 	//logger.info("-- 회원가입 버튼 작동 / vo : "+ vo);
		mservice.insert(vo);
		
		return "redirect:../signup_complete";
	} // signUp
	
	
	
	/* 이메일 중복 확인  */
	@RequestMapping(value = "duplCheck", method = RequestMethod.GET)
	public String duplCheck(@RequestParam("id") String id,
							HttpServletResponse response) throws Exception{
		int check = 0;
		check = mservice.duplCheck(id);
		
		return null;
	} // duplCheck
	
	

	/* 로그인 동작  */
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signIn(MemberVO vo, HttpSession session) throws Exception{
		//logger.info("-- 로그인 버튼 작동 ");
		MemberVO mvo = mservice.loginMem(vo);
		
		// 로그인 실패 시
		if(mvo == null) { 
			return "redirect:../login";
			
		// 로그인 성공 시	
		}else if(mvo != null) { 
			session.setAttribute("id", mvo.getId());
		}
		
		logger.info("-- 로그인 버튼 완료");
		return "redirect:../index";
	} // signIn
	 
	

	/* 로그 아웃  */
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String logOut(HttpServletResponse response,
						 HttpSession session) throws Exception {
		
		//logger.info("-- 로그아웃 메소드 실행");
		session.invalidate();
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('로그아웃 되었습니다.');");
		out.println("location.href='../index'");
		out.println("</script>");
		out.flush();
		return null;
	} // logOut
	
	
	
	/* 아이디 찾기  */
	@RequestMapping(value = "/findid", method = RequestMethod.POST)
	public String findId(String phone, HttpServletResponse response) throws Exception {
//		logger.info("*** phone : " + phone);
		String id = mservice.findId(phone);
	    
		return "redirect:../findid";
	} // findId
	

	
	/* 비밀번호 찾기  */
	@RequestMapping(value = "/findpw", method = RequestMethod.POST)
	public String findPw(MemberVO vo, HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		// 이메일이 존재하는지 확인
		int check = 0; 
		check = mservice.duplCheck(vo.getId());
		
		// 가입한 계정이 없을 때
		if(check == 0) {
			
			out.println("<script>");
			out.println("alert('가입한 계정이 없습니다.');");
			out.println("location.href='../findpw'");
			out.println("</script>");
			out.flush();
		
		// 가입한 계정이 있을 때
		}else{
			
			logger.info("*** vo : " + vo);
			MemberVO mvo = mservice.findPw(vo);

			// 이메일로 찾기
			if(vo.getMail() != null) {
				
				// --------------------- 메일 발송 --------------------- //
//				MimeMessage message = mailSender.createMimeMessage();
//				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
//				messageHelper.setFrom("test@gmail.com"); // 보내는 사람 생략 시 작동 X
//				messageHelper.setTo(mail); // 받는 사람
//				messageHelper.setSubject("골프아이 임시 비밀번호입니다."); // 메일 제목 (생략 가능)
//				String content = "< 고객님의 비밀번호는 [ " + pw + " ] 입니다. >";
//				messageHelper.setText(content); // 메일 내용
//				mailSender.send(message);
//				// --------------------- 메일 발송 --------------------- //
				
				out.println("<script>");
				out.println("alert('이메일로 비밀번호를 전송하였습니다.');");
				out.println("location.href='../findpw'");
				out.println("</script>");
				out.flush();
			
			// 휴대폰으로 찾기
			}else if(vo.getPhone() != null){
				
				out.println("<script>");
				out.println("alert('휴대폰으로 문자 전송되었습니다.');");
				out.println("location.href='../findpw'");
				out.println("</script>");
				out.flush();
				
			} // if
			
		} // if
			
		return null;
	} // findPw
	
	
	/* 카카오 아이디 회원가입 및 로그인 */
    @RequestMapping(value = "/kakao_signup", method = RequestMethod.GET)
    public String redirectKakao(String id, String sns, String gender, HttpSession session) throws Exception {
            
	    	// 접속자 정보 get
	    	MemberVO mvo = new MemberVO();
	    	mvo.setId(id);
	    	mvo.setSns(sns);
	    	mvo.setGender(gender);
	    	

	    	// 이메일이 존재하는지 확인
//    		int check = 0; 
//    		check = mservice.duplCheck(id);
//    		System.out.println(check);

    		// 이메일이 존재할 때
//    		if(check == 1) {
    			
//    			session.setAttribute("kakao_login", mvo);
    			
//    			return "redirect:../login";
    			
    		// 존재하지 않을 때
//    		}else {
    			
//    			session.setAttribute("kakao_login", mvo);
//    			return "redirect:../signup_";
//    		}
            // 접속 토큰 get
//            String kakaoToken = mservice.getReturnAccessToken(param);
            
            // 로그아웃 처리 시, 사용할 토큰 값
//            session.setAttribute("kakaoToken", kakaoToken);
            return "redirect:../signup_";
    } // redirectKakao

}
