package com.spring.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.domain.BoardVO;
import com.spring.domain.CriteriaVO;
import com.spring.domain.InquireVO;
import com.spring.domain.PromotionVO;


@Repository
public class BoardDAOImpl implements BoardDAO{
  
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.spring.mapper.BoardMapper";

	
	/* 전체 게시글 갯수 조회 */
	@Override
	public int countBoard() throws Exception {

		int count = sqlSession.selectOne(namespace+".countBoard");
		
		return count;
	} // countBoard

	
	/* 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectBoard(CriteriaVO vo) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		
		bbsList = sqlSession.selectList(namespace+".selectBoard", vo);
		
		return bbsList;
	} // selectBoard

	
	/* 페이징 처리 */
	@Override
	public List<BoardVO> listPage(CriteriaVO vo) throws Exception {
		System.out.println("-- DAOImpl : listPage(Criteria cri) 실행");
		return sqlSession.selectList(namespace+".listCri", vo);
	} // listPage


	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {
	
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = sqlSession.selectList(namespace+".lookup", vo);
		
		return bbsList;
	} // lookup

	
	
	
}