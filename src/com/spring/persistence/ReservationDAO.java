package com.spring.persistence;

import com.spring.domain.ReservationVO;

public interface ReservationDAO{ 
	 
	public void memberReservation(ReservationVO vo) throws Exception; // 상품 예약

}