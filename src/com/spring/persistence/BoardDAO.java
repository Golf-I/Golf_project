package com.spring.persistence;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;

public interface BoardDAO {

	public int countBoard() throws Exception; // 전체 게시글 갯수 조회

	public List<BoardVO> selectBoard(Criteria vo) throws Exception; // 전체 게시글 조회
	
	public List<BoardVO> listPage(Criteria vo) throws Exception; // 페이징 처리
	
	public List<BoardVO> lookup(BoardVO vo) throws Exception; // 게시물 조회
}