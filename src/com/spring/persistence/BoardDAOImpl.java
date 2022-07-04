package com.spring.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.InquireVO;
import com.spring.domain.PromotionVO;


@Repository
public class BoardDAOImpl implements BoardDAO{
  
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.spring.mapper.BoardMapper";

	
	/* 공지사항 전체 게시글 갯수 조회 */
	@Override
	public int countNotice() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countNotice");
		
		return count;
	} // countNotice
	
	
	/* 자주묻는질문 전체 게시글 갯수 조회 */
	@Override
	public int countQnA() throws Exception {
		
		int count = sqlSession.selectOne(namespace+".countQnA");
		
		return count;
	} // countQnA

	
	/* 공지사항 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectNotice(Criteria vo) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		
		bbsList = sqlSession.selectList(namespace+".selectNotice", vo);
		
		return bbsList;
	} // selectNotice
	
	
	/* 자주묻는질문 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectQnA(Criteria vo) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		
		bbsList = sqlSession.selectList(namespace+".selectQnA", vo);
		
		return bbsList;
	} // selectQnA

	
	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {
	
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = sqlSession.selectList(namespace+".lookup", vo);
		
		return bbsList;
	} // lookup


}