package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO bdao;
	
	 
	/* 공지사항 전체 게시글 갯수 조회 */
	@Override
	public int countNotice() throws Exception {
		
		int count = bdao.countNotice();
		
		return count;
	} // countBoard
	
	
	/* 자주묻는 질문 전체 게시글 갯수 조회 */
	@Override
	public int countQnA() throws Exception {
		
		int count = bdao.countQnA();
		
		return count;
	} // countQnA
	
	
	/* 공지사항 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectNotice(Criteria vo) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.selectNotice(vo);
		
		return bbsList;
	} // selectNotice
	
	
	/* 자주묻는질문 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectQnA(Criteria vo) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.selectQnA(vo);
		
		return bbsList;
	} // selectQnA


	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.lookup(vo);
		
		return bbsList;
	} // lookup


}