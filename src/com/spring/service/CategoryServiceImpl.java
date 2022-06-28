package com.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.domain.InquireVO;
import com.spring.domain.MemberVO;
import com.spring.domain.PromotionVO;
import com.spring.persistence.CategoryDAO;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Inject
	private CategoryDAO idao;
	
	 
	/* 상담신청 등록  */
	@Override
	public void register(InquireVO vo) throws Exception {
		
		//System.out.println("-- ServiceImpl : vo - " + vo);
		idao.register(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");

	} // register


	/* 제휴/홍보 문의  */
	@Override
	public void promotion(PromotionVO vo) throws Exception {

		//System.out.println("-- ServiceImpl : vo - " + vo);
		idao.promotion(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");
		
	} // promotion


	/* 홀세일 문의 */
	@Override
	public void wholesale(PromotionVO vo) throws Exception {

		//System.out.println("-- ServiceImpl : vo - " + vo);
		idao.wholesale(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");
		
	} // wholesale


	/* 홀세일 문의 */
	@Override
	public void store(PromotionVO vo) throws Exception {
		//System.out.println("-- ServiceImpl : vo - " + vo);
		idao.store(vo);
		//System.out.println("-- ServiceImpl : insert() 실행 완료 ");
	} // store
	

}