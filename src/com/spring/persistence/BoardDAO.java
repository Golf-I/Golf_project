package com.spring.persistence;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ProductVO;

public interface BoardDAO {

	public int countNotice() throws Exception; // 공지사항 전체 게시글 갯수 조회

	public int countQnA() throws Exception; // 자주묻는질문 전체 게시글 갯수 조회

	public int countPackage() throws Exception; // 패키지 상품 전체 게시글 갯수 조회

	public List<BoardVO> selectNotice(Criteria cri) throws Exception; // 공지사항 전체 게시글 조회

	public List<BoardVO> selectQnA(Criteria cri) throws Exception; // 자주묻는질문 전체 게시글 조회
	
	public List<ProductVO> selectPackages(Criteria cri) throws Exception; // 패키지 상품 총 게시물 조회
	
	public List<BoardVO> lookup(BoardVO vo) throws Exception; // 게시물 조회
	
	public List<ProductVO> oneProduct(ProductVO vo) throws Exception; // 상품 게시물 조회

}