package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.ReservationVO;
import com.spring.domain.TravelerVO;
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

	/* 예약 내역 가져오기 */
	@Override
	public List<ReservationVO> getReservation(String id) throws Exception {

		List<ReservationVO> reserList = rdao.getReservation(id);
		
		return reserList;
	} // ReservationVO vo
	
	
	/* 예약 내역 1개 가져오기 */
	@Override
	public List<ReservationVO> oneReservation(String id, int idx) throws Exception {
		
		List<ReservationVO> reserList = rdao.oneReservation(id, idx);
		
		return reserList;
	} // oneReservation

	
	/* 여행자정보 삽입 */
	@Override
	public void addTraveler(ReservationVO vo) throws Exception {

		rdao.addTraveler(vo);
		
	} // addTraveler

	
	/* idx 가져오기 */
	@Override
	public int getIdx(ReservationVO vo) throws Exception {
		
		int idx = rdao.getIdx(vo);
		
		return idx;
	} // getIdx
	
	

}