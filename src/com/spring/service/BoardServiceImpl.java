package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.ProductVO;
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
	
	
	/* 패키지 상품 전체 게시글 갯수 조회 */
	@Override
	public int countPackage() throws Exception {
		
		int count = bdao.countPackage();
		
		return count;
	} // countPackage
	
	
	/* 공지사항 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectNotice(Criteria cri) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.selectNotice(cri);
		
		return bbsList;
	} // selectNotice

	
	/* 자주묻는질문 전체 게시글 조회 */
	@Override
	public List<BoardVO> selectQnA(Criteria cri) throws Exception {
		
		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.selectQnA(cri);
		
		return bbsList;
	} // selectQnA

	
	/* 패키지 상품 전체 게시글 조회 */
	@Override
	public List<ProductVO> selectPackages(Criteria cri) throws Exception {
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		bbsList = bdao.selectPackages(cri);
		
		return bbsList;
	} // selectPackages


	/* 게시물 조회 */
	@Override
	public List<BoardVO> lookup(BoardVO vo) throws Exception {

		List<BoardVO> bbsList = new ArrayList<BoardVO>();
		bbsList = bdao.lookup(vo);
		
		return bbsList;
	} // lookup
	
	
	/* 상품 게시물 조회 */
	@Override
	public List<ProductVO> oneProduct(ProductVO vo) throws Exception {
		
		List<ProductVO> bbsList = new ArrayList<ProductVO>();
		bbsList = bdao.oneProduct(vo);
		
		return bbsList;
	} // oneProduct


}