package com.spring.service;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;

public interface BoardService {

	public int countBoard() throws Exception; // 게시물 총 갯수

	public List<BoardVO> selectBoard(Criteria vo) throws Exception; // 페이징 처리 게시글 조회
	
	public List<BoardVO> listCri(Criteria vo) throws Exception; // 페이징 처리

	public List<BoardVO> lookup(BoardVO vo) throws Exception; // 게시물 조회
}