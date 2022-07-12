package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.domain.InquireVO;
import com.spring.domain.MemberVO;
import com.spring.domain.MembershipVO;
import com.spring.domain.PromotionVO;
import com.spring.persistence.CategoryDAO;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Inject
	private CategoryDAO cdao;
	
	 
	/* 상담신청 등록  */
	@Override
	public void register(InquireVO vo) throws Exception {
		
		//System.out.println("-- ServiceImpl : vo - " + vo);
		cdao.register(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");

	} // register


	/* 제휴/홍보 문의  */
	@Override
	public void promotion(PromotionVO vo) throws Exception {

		//System.out.println("-- ServiceImpl : vo - " + vo);
		cdao.promotion(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");
		
	} // promotion


	/* 홀세일 문의 */
	@Override
	public void wholesale(PromotionVO vo) throws Exception {

		//System.out.println("-- ServiceImpl : vo - " + vo);
		cdao.wholesale(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");
		
	} // wholesale


	/* 홀세일 문의 */
	@Override
	public void store(PromotionVO vo) throws Exception {
		//System.out.println("-- ServiceImpl : vo - " + vo);
		cdao.store(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");
	} // store



}