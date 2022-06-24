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
	 	logger.info("-- 회원가입 버튼 작동 / vo : "+ vo);
		mservice.insert(vo);
		
		return "redirect:../signup_complete";
	} // signUp
	
	
	
	/* 일반회원 이메일 중복 확인  */
	@RequestMapping(value = "duplCheck", method = RequestMethod.GET)
	public String duplCheck(@RequestParam("id") String id,
							HttpServletResponse response) throws Exception{
		int check = 0;
		check = mservice.duplCheck(id);
		
		return null;
	} // duplCheck
	
	
	
	/* 소셜아이디 이메일 중복 확인  */
	@RequestMapping(value = "snsDuplCheck", method = RequestMethod.POST)
	public int snsDuplCheck(/* @RequestParam("id") String id, @RequestParam("sns") String sns, */
							MemberVO vo, HttpServletResponse response) throws Exception{
		logger.info("MemController vo : " + vo);
		int check = 0;
		check = mservice.snsDuplCheck(vo);
		
		return (Integer)check;
	} // snsDuplCheck
	
	
	
	/* 일반회원 로그인 동작  */
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signIn(MemberVO vo, HttpSession session) throws Exception{
		//logger.info("-- 로그인 버튼 작동 ");
		MemberVO mvo = mservice.loginMem(vo);
//		logger.info("MemberCon mvo : " +  mvo);
		
		// 로그인 실패 시
		if(mvo == null) { 
			return "redirect:../login";
			
		// 로그인 성공 시	
		}else if(mvo != null) { 
			session.setAttribute("id", mvo.getId());
		}
		
//		logger.info("-- 로그인 버튼 완료");
		return "redirect:../index";
	} // signIn
	 
	

	/* 소셜회원 로그인 동작  */
	@RequestMapping(value = "/snsSignIn", method = RequestMethod.POST)
	public String snsSignIn(MemberVO vo, HttpSession session) throws Exception{
		//logger.info("-- 로그인 버튼 작동 ");
		logger.info("Memcontroller vo : " + vo);
		MemberVO mvo = mservice.snsSignIn(vo);
		
		// 로그인 실패 시
		if(mvo == null) { 
			return "redirect:../login";
			
		// 로그인 성공 시	
		}else if(mvo != null) { 
			session.setAttribute("id", mvo.getId());
			session.setAttribute("sns", mvo.getSns());
		}
		
		logger.info("-- 로그인 버튼 완료");
		return "redirect:../index";
	} // snsSignIn
	
	
	
	/* 로그아웃  */
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String logOut(HttpServletResponse response,
						 HttpSession session) throws Exception {
		
		//logger.info("-- 로그아웃 메소드 실행");
		session.invalidate();
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
//		out.println("alert('로그아웃 되었습니다.');");
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
	

	
	/* 마이페이지 이전 비밀번호 확인  */
	@RequestMapping(value = "/mypagePre", method = RequestMethod.POST)
	public String mypagePre(MemberVO vo, HttpSession session, Model model) throws Exception{
//		logger.info("MemberCon mvo : " +  mvo);
		int count = mservice.mypageCheck(vo); 
		
		if(count == 1) { // 비밀번호 일치할 때
			return "redirect:../mypage";
			
		}else{ // 비밀번호 일치하지 않을 때
			return "redirect:../mypage_pre";
		}
		
	} // mypagePre
	
	
	
	/* 회원 정보 수정하기  */
	@RequestMapping(value = "/memInfoUpdate", method = RequestMethod.POST)
	public String memberInfoUpdate(MemberVO vo) throws Exception{

		int result = mservice.memberInfoUpdate(vo);
		
		if(result == 1) { // 변경되었을 때
			return "redirect:../mypage";
		}else{
			return "redirect:../mypage";
		}
	} // memberInfoUpdate
	
	
}
