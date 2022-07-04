package com.spring.service;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;

public interface BoardService {

	public int countNotice() throws Exception; // 공지사항 게시물 총 갯수

	public int countQnA() throws Exception; // 자주묻는질문 게시물 총 갯수

	public List<BoardVO> selectNotice(Criteria vo) throws Exception; // 공지사항 페이징 총 게시물 조회

	public List<BoardVO> selectQnA(Criteria vo) throws Exception; // 자주묻는질문 페이징 총 게시물 조회
	
	public List<BoardVO> lookup(BoardVO vo) throws Exception; // 게시물 조회
}