package com.spring.persistence;

import com.spring.domain.InquireVO;
import com.spring.domain.PromotionVO;

public interface CategoryDAO {

	public void register(InquireVO vo) throws Exception; // 상담신청 등록
	
	public void promotion(PromotionVO vo) throws Exception; // 제휴/홍보 문의

	public void wholesale(PromotionVO vo) throws Exception; // 홀세일 문의

	public void store(PromotionVO vo) throws Exception; // 입점 문의
	 
}