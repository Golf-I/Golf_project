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
	
	 
	/* 전체 게시글 갯수 조회 */
	@Override
	public int countBoard() throws Exception {
		
		int count = bdao.countBoard();
		
		return count;
	} // countBoard
	
	
	/* 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectBoard(Criteria vo) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.selectBoard(vo);
		
		return bbsList;
	} // selectBoard


	/* 페이징 처리 */
	@Override
	public List<BoardVO> listCri(Criteria vo) throws Exception {
		
//		System.out.println("-- ServiceImpl : listCri() 실행");
		
		return bdao.listPage(vo);
	} // listCri()


	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.lookup(vo);
		
		return bbsList;
	} // lookup
	
}