package com.spring.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.spring.domain.InquireVO;
import com.spring.domain.PromotionVO;
import com.spring.service.CategoryService;


@Controller
@RequestMapping(value = "/category/*")
public class CategoryController {

	private static final Logger logger = LoggerFactory.getLogger(CategoryController.class);
	
	@Inject
	private CategoryService iservice;

	
	
	/* 회원권&아카데미 상담 신청  */
	@RequestMapping(value = "/inquire", method = RequestMethod.POST)
	public String inquire(InquireVO vo) throws Exception {
	 	logger.info("-- 버튼 작동 / vo : "+ vo);
	 	iservice.register(vo);
		
		return "redirect:../consulting";
	} // inquire
	
	
	
	/* 제휴/홍보 문의  */
	@RequestMapping(value = "/promotion", method = RequestMethod.POST)
	public String promotion(PromotionVO vo, @RequestParam(value="file", required = false) MultipartFile file) throws Exception {
		logger.info("-- 버튼 작동 / file : "+ file);
		logger.info("-- file.getContentType : "+ file.getContentType());
		logger.info("-- file.getSize : "+ file.getSize());
		logger.info("-- file.getBytes : "+ file.getBytes());
		logger.info("-- file.getInputStream : "+ file.getInputStream());
//		logger.info("-- 버튼 작동 / vo : "+ vo); 
		
//		vo.setFilename(file.getName());
		vo.setFilename(file.getOriginalFilename());
		
		iservice.promotion(vo);
		
		return "redirect:../promotion";
	} // inquire
	
	
	
	/* 홀세일 문의  */
	@RequestMapping(value = "/wholesale", method = RequestMethod.POST)
	public String wholesale(PromotionVO vo, @RequestParam(value="file", required = false) MultipartFile file) throws Exception {
		logger.info("-- 버튼 작동 / vo : "+ vo);
		logger.info("-- file.getContentType : "+ file.getOriginalFilename());
		
		vo.setFilename(file.getOriginalFilename());
		iservice.wholesale(vo);
		
		return "redirect:../wholesale";
	} // wholesale
	
	
	
	/* 입점 문의  */
	@RequestMapping(value = "/store", method = RequestMethod.POST)
	public String store(PromotionVO vo, @RequestParam(value="file", required = false) MultipartFile file) throws Exception {
		logger.info("-- 버튼 작동 / vo : "+ vo);
		logger.info("-- file.getContentType : "+ file.getOriginalFilename());
		
		vo.setFilename(file.getOriginalFilename());
		iservice.store(vo);
		
		return "redirect:../store";
	} // store
	
	
}
