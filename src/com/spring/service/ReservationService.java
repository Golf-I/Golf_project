package com.spring.service;

import java.util.List;

import com.spring.domain.ReservationVO;

public interface ReservationService {

	public void memberReservation(ReservationVO vo) throws Exception; // 상품 예약

	public List<ReservationVO> getReservation(String id) throws Exception; // 예약내역 가져오기
	
	public List<ReservationVO> oneReservation(String id, int idx) throws Exception; // 예약 내역 1개 가져오기
}