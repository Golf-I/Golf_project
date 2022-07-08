package com.spring.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.ProductVO;
import com.spring.domain.ReservationVO;

@Repository
public class ReservationDAOImpl implements ReservationDAO{
  
	@Inject
	private SqlSession sqlSession; 	// DB와 연결, 자원 해제, SQL쿼리 실행 객체
	
	private static final String namespace = "com.spring.mapper.ReservationMapper"; // memberMapper.xml파일의 namespace와 동일

	/* 상품 예약 */
	public void memberReservation(ReservationVO vo) throws Exception{
		
		sqlSession.insert(namespace+".memberReservation", vo);
		
	} // memberReservation
	
	
	
}