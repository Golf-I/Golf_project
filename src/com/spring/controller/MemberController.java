package com.spring.controller;

import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.domain.MemberVO;
import com.spring.domain.ProductVO;
import com.spring.domain.ReservationVO;
import com.spring.domain.TravelerVO;
import com.spring.service.MemberService;
import com.spring.service.ReservationService;


@Controller
@RequestMapping(value = "/member/*") 
public class MemberController {

	@Autowired
	private JavaMailSender mailSender; // 메일 전송을 위한 객체 DI
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject 
	private MemberService mservice;
	
	@Inject 
	private ReservationService rservice;
	
	
	/* 회원가입  */
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signUp(MemberVO vo) throws Exception {
//	 	logger.info("-- 회원가입 버튼 작동 / vo : "+ vo);
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
	public String snsDuplCheck(/* @RequestParam("id") String id, @RequestParam("sns") String sns, */
							MemberVO vo, HttpServletResponse response, HttpSession session) throws Exception{
		logger.info("MemController vo : " + vo);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int check = 0;
		check = mservice.snsDuplCheck(vo);
		
		logger.info("MemController check : " + check);
		
		if(check == 1) {
			out.println("<script>");
			out.println("self.close();");
			out.println("</script>");
			snsSignIn(vo, session);
			return null;
		} else { 
			out.println("<script>");
			out.println("location.href='../signup'"); 
			out.println("</script>");
			out.flush();
			return "redirect:../login"; 
		}
	} // snsDuplCheck
	
	
	
	/* 일반회원 로그인  */
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signIn(MemberVO vo, HttpSession session) throws Exception{
//		logger.info("-- 로그인 버튼 작동 ");
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
	 
	

	/* 소셜회원 로그인  */
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
	public String findId(String phone, MemberVO vo, Model model) throws Exception {
		
		MemberVO mvo = mservice.findId(phone);
		
		model.addAttribute("mvo", mvo.getId());
		
		return "redirect:../findid_complete";
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
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				messageHelper.setFrom("gyrud6744@gmail.com"); // 보내는 사람 생략 시 작동 X
				messageHelper.setTo(vo.getId()); // 받는 사람
//				messageHelper.setTo("gyrud6744@gmail.com"); // 받는 사람
				messageHelper.setSubject("골프아이 임시 비밀번호입니다."); // 메일 제목 (생략 가능)
				String content = "< 고객님의 비밀번호는 [ " + mvo.getPw() + " ] 입니다. >";
				messageHelper.setText(content); // 메일 내용
				mailSender.send(message);
				// --------------------- 메일 발송 --------------------- //
				
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
	public String mypagePre(MemberVO vo, HttpSession session, HttpServletResponse res) throws Exception{

		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		int count = mservice.mypageCheck(vo); 
		
		if(count == 1) { // 비밀번호가 일치할 때
			return "redirect:../mypage";
			
		}else{ // 일치하지 않을 때
			out.println("<script>");
			out.println("alert('비밀번호를 확인하세요.');");
			out.println("location.href='../mypage_pre'");
			out.println("</script>");
			out.flush();
			return null;
		}
		
	} // mypagePre
	
	
	
	/* 회원정보 수정  */
	@RequestMapping(value = "/memInfoUpdate", method = RequestMethod.POST)
	public String memberInfoUpdate(MemberVO vo, HttpServletResponse res) throws Exception{
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();

		int result = mservice.memberInfoUpdate(vo);

		if(result == 1) { // 변경되었을 때
			out.println("<script>");
			out.println("alert('수정되었습니다.');");
			out.println("location.href='../mypage'");
			out.println("</script>");
			out.flush();
			return null;
		}else{ // 변경하지 못했을 때
			out.println("<script>");
			out.println("alert('비밀번호를 확인하세요.');");
			out.println("location.href='../mypage'");
			out.println("</script>");
			out.flush();
			return null;
		}
	} // memberInfoUpdate
	
	
	
	/* 회원정보 이름 수정  */
	@RequestMapping(value = "/memberNameUpdate", method = RequestMethod.POST)
	public String memberNameUpdate(MemberVO vo, @RequestParam("birth1") String birth1,
									@RequestParam("birth2") String birth2, 
									@RequestParam("birth3") String birth3,
									HttpServletResponse res) throws Exception{
		
		String text = birth1+"-"+birth2+"-"+birth3;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = Date.valueOf(text);
		vo.setBirth(date);
		
		int result = mservice.memberNameUpdate(vo);
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		if(result == 1) { // 변경되었을 때
			out.println("<script>");
			out.println("alert('변경되었습니다.');");
			out.println("self.close();");
			out.println("window.opener.location.reload(true);");
			out.println("</script>");
			out.flush();
			return null;
		}else{
			out.println("<script>");
			out.println("alert('오류가 발생했습니다. 관리자에게 문의해주세요.');");
			out.println("location.href='../mypage_name'");
			out.println("</script>");
			out.flush();
			return null;
		}
	} // memberNameUpdate
	
	
	
	/* 회원정보 전화번호 수정  */
	@RequestMapping(value = "/memberPhoneUpdate", method = RequestMethod.POST)
	public String memberPhoneUpdate(MemberVO vo, HttpServletResponse res) throws Exception{
		
		int result = mservice.memberPhoneUpdate(vo);

		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		if(result == 1) { // 변경되었을 때
			out.println("<script>");
			out.println("alert('변경되었습니다.');");
			out.println("self.close();");
			out.println("window.opener.location.reload(true);");
			out.println("</script>");
			out.flush();
			return null;
		}else{
			out.println("<script>");
			out.println("alert('오류가 발생했습니다. 관리자에게 문의해주세요.');");
			out.println("location.href='../mypage_phone'");
			out.println("</script>");
			out.flush();
			return null;
		}
		
	} // memberPhoneUpdate
	
	
	/* 회원 탈퇴  */
	@RequestMapping(value = "/memberSecede", method = RequestMethod.POST)
	public String memberSecede(MemberVO vo, HttpServletResponse res, HttpSession session) throws Exception{
		
		int result = mservice.memberSecede(vo);

		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		if(result == 1) { // 탈퇴 성공했을 시
			out.println("<script>");
			out.println("alert('탈퇴되었습니다.');");
			out.println("location.href='../index';");
			out.println("</script>");
			out.flush();
			session.invalidate();
			return null;
		}else{
			out.println("<script>");
			out.println("alert('오류가 발생하었습니다. 관리자에게 문의해주세요.');");
			out.println("location.href='../mypage';");
			out.println("</script>");
			out.flush();
			return null;
		}
	} // memberSecede
	
	
	/* 상품 예약 */
	@RequestMapping(value = "/reservation", method = {RequestMethod.POST, RequestMethod.GET})
	public String memberReservation(Model model, ReservationVO vo, HttpSession session) throws Exception{
		
		rservice.memberReservation(vo);
		logger.info("확인!!!!!!!! : " + vo);
		
		int idx = rservice.getIdx(vo);
//		logger.info("idx : " + idx);
		vo.setIdx(idx);
		logger.info("vo : " + vo);
		rservice.addTraveler(vo);
		
		return "redirect:../reservation_complete";
	} // memberReservation
	
}
