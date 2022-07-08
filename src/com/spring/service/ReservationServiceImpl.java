package com.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.ReservationVO;
import com.spring.persistence.ReservationDAO;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Inject
	private ReservationDAO rdao;

	/* 상품 예약 */
	@Override
	public void memberReservation(ReservationVO vo) throws Exception {
		
		rdao.memberReservation(vo);
		
	} // memberReservation
	
	 
	
	

}