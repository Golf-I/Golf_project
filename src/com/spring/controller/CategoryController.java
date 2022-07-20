package com.spring.controller;

import java.io.File;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.util.WebUtils;

import com.spring.domain.CommentVO;
import com.spring.domain.InquireVO;
import com.spring.domain.PromotionVO;
import com.spring.service.BoardService;
import com.spring.service.CategoryService;


@Controller
@RequestMapping(value = "/category/*")
public class CategoryController {

	private static final Logger logger = LoggerFactory.getLogger(CategoryController.class);
	
	@Inject
	private CategoryService iservice;
	
	@Inject
	private BoardService bservice;

	
	/* 회원권&아카데미 상담 신청  */
	@RequestMapping(value = "/inquire", method = RequestMethod.POST)
	public String inquire(InquireVO vo, HttpServletResponse res) throws Exception {
	 	logger.info("-- 버튼 작동 / vo : "+ vo);
	 	iservice.register(vo);
	 	
	 	res.setContentType("text/html; charset=UTF-8"); 
	 	PrintWriter out = res.getWriter();
	 	
	 	out.println("<script>");
	 	out.println("alert('신청되었습니다.');");
		out.println("self.close();");
	 	out.println("</script>");
	 	out.flush();
	 	
		return null;
	} // inquire
	
	
	
	/* 제휴/홍보 문의  */
	@RequestMapping(value = "/promotion", method = RequestMethod.POST)
	public String promotion(HttpServletRequest request, HttpServletResponse res,
							PromotionVO vo, @RequestParam(value="file", required = false) MultipartFile file) throws Exception {

		String storagePath = WebUtils.getRealPath(request.getSession().getServletContext(), "/WEB-INF/views/upload/promotion/");
		logger.info("-- 버튼 작동 / storagePath : "+ storagePath);

		File f = new File(storagePath+file.getOriginalFilename());
		file.transferTo(f);
		
		vo.setFilename(file.getOriginalFilename());
		iservice.promotion(vo);
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.println("<script>");
		out.println("alert('등록되었습니다.');");
		out.println("location.href='../promotion';");
		out.println("</script>");
		out.flush();
		
		return null;
	} // inquire
	
	
	
	/* 홀세일 문의  */
	@RequestMapping(value = "/wholesale", method = RequestMethod.POST)
	public String wholesale(HttpServletRequest request, HttpServletResponse res,
							PromotionVO vo, @RequestParam(value="file", required = false) MultipartFile file) throws Exception {
		
		String storagePath = WebUtils.getRealPath(request.getSession().getServletContext(), "/WEB-INF/views/upload/wholesale/");
		
		File f = new File(storagePath+file.getOriginalFilename());
		file.transferTo(f);
		
		vo.setFilename(file.getOriginalFilename());
		iservice.wholesale(vo);
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.println("<script>");
		out.println("alert('등록되었습니다.');");
		out.println("location.href='../wholesale';");
		out.println("</script>");
		out.flush();
		
		return null;
	} // wholesale
	
	
	
	/* 입점 문의  */
	@RequestMapping(value = "/store", method = RequestMethod.POST)
	public String store(HttpServletRequest request, HttpServletResponse res,
						PromotionVO vo, @RequestParam(value="file", required = false) MultipartFile file) throws Exception {
		
		String storagePath = WebUtils.getRealPath(request.getSession().getServletContext(), "/WEB-INF/views/upload/entering_the_store/");
		
		File f = new File(storagePath+file.getOriginalFilename());
		file.transferTo(f);
		
		vo.setFilename(file.getOriginalFilename());
		iservice.store(vo);
		
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.println("<script>");
		out.println("alert('등록되었습니다.');");
		out.println("location.href='../store';");
		out.println("</script>");
		out.flush();
		
		return null;
	} // store
	
	
	/* 상품별점/평점 등록 */
	@RequestMapping(value = "comment", method = RequestMethod.POST)
	public String comment(CommentVO vo) throws Exception{
		
//		logger.info("@@@@@@@ vo :" + vo);
		bservice.addComment(vo);
		
		return "redirect:../product_detail?product_code="+vo.getProduct_code();
	} // comment
	
	
}
