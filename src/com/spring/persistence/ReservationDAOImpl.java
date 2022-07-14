package com.spring.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.ProductVO;
import com.spring.domain.ReservationVO;
import com.spring.domain.TravelerVO;

@Repository
public class ReservationDAOImpl implements ReservationDAO{
  
	@Inject
	private SqlSession sqlSession; 	// DB와 연결, 자원 해제, SQL쿼리 실행 객체
	
	private static final String namespace = "com.spring.mapper.ReservationMapper"; // memberMapper.xml파일의 namespace와 동일

	/* 상품 예약 */
	public void memberReservation(ReservationVO vo) throws Exception{
		
		sqlSession.insert(namespace+".memberReservation", vo);
		
	} // memberReservation

	
	/* 예약 내역 가져오기 */
	@Override
	public List<ReservationVO> getReservation(String id) throws Exception {

		List<ReservationVO> reserList = sqlSession.selectList(namespace+".getReservation", id);
		
		return reserList;
	} // getReservation


	/* 예약 내역 1개 가져오기 */
	@Override
	public List<ReservationVO> oneReservation(String id, int idx) throws Exception {
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		paramMap.put("idx", idx);
		
		List<ReservationVO> reserList = sqlSession.selectList(namespace+".oneReservation", paramMap);
		
		return reserList;
//		return null;
	} // oneReservation


	/* 여행자정보 삽입 */
	@Override
	public void addTraveler(ReservationVO vo) throws Exception {
//	public void addTraveler(List<TravelerVO> list) throws Exception {

//		int result = sqlSession.insert(namespace+".addTraveler", list);
		sqlSession.insert(namespace+".addTraveler", vo);
		
	} // addTraveler


	/* idx 가져오기 */
	@Override
	public int getIdx(ReservationVO vo) throws Exception {
		
		int idx = sqlSession.selectOne(namespace+".getIdx", vo);
		
		return idx;
	} // getIdx
	
	
	
}