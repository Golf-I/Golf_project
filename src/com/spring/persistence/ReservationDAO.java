package com.spring.persistence;

import java.util.List;

import com.spring.domain.ReservationVO;
import com.spring.domain.TravelerVO;

public interface ReservationDAO{ 
	 
	public void memberReservation(ReservationVO vo) throws Exception; // 상품 예약

	public List<ReservationVO> getReservation(String id) throws Exception; // 예약 내역 가져오기
	
	public List<ReservationVO> oneReservation(String id, int idx) throws Exception; // 예약 내역 1개 가져오기

	public void addTraveler(ReservationVO vo) throws Exception; // 여행자정보 삽입
	
	public int getIdx(ReservationVO vo) throws Exception; // idx 가져오기
}