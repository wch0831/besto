package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper ;
	
	//자유게시판
	@Override
	public ArrayList<BoardFreeVO> BoardList() {
		return boardMapper.free_board_select();
	}
	@Override
	public BoardFreeVO boardFreeDetail(int postSeq) {
		BoardFreeVO bvo = boardMapper.free_board_detail(postSeq);
		return bvo;
	}
	@Override
	public int boardFreeInsert(BoardFreeVO fvo) {
		return boardMapper.free_board_insert(fvo);
	}
	@Override
	public int boardFreeUpdate(BoardFreeVO vo) {
		return boardMapper.free_board_update(vo);
	}
	
	
	//도전분석방
	@Override
	public ArrayList<BoardChallengeVO> BoardChallengeList() {
		return boardMapper.challenge_board_select();
	}
	@Override
	public BoardChallengeVO BoardChallengeDetail(int postSeq) {
		BoardChallengeVO bvo = boardMapper.challenge_board_detail(postSeq);
		return bvo;
	}
	@Override
	public int boardChallengeInsert(BoardChallengeVO fvo) {
		return boardMapper.challenge_board_insert(fvo);
	}
	@Override
	public int boardChallengeUpdate(BoardChallengeVO vo) {
		return boardMapper.challenge_board_update(vo);
	}
	
	
	//적중내역
	@Override
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList() {
		return boardMapper.hit_history_board_select();
	}
	
	@Override
	public BoardHitHistoryVO BoardFreeHitDetail(int postSeq) {
		BoardHitHistoryVO bvo = boardMapper.hit_history_board_detail(postSeq);
		return bvo;
	}
	
	@Override
	public int boardHitInsert(BoardHitHistoryVO fvo) {
		return boardMapper.hit_history_board_insert(fvo);
	}
	@Override
	public int boardHitUpdate(BoardHitHistoryVO vo) {
		return boardMapper.hit_history_board_update(vo);
	}
	
	/*구매내역*/
	@Override
	public ArrayList<BoardBuyHistoryVO> boardBuyHistoryList() {
		return boardMapper.buy_history_board_select();
	}
	@Override
	public BoardBuyHistoryVO BoardBuyHistoryDetail(int postSeq) {
		BoardBuyHistoryVO bvo = boardMapper.buy_history_board_detail(postSeq);
		return bvo;
	}
	@Override
	public int boardBuyInsert(BoardBuyHistoryVO fvo) {
		return boardMapper.buy_history_board_insert(fvo);
	}
	@Override
	public int boardBuyUpdate(BoardBuyHistoryVO vo) {
		return boardMapper.buy_history_board_update(vo);
	}
	

	
	
	
	//공지사항
	@Override
	public ArrayList<NoticeVO> noticeList() {
		return boardMapper.notice_all();
	}
	
	@Override
	public NoticeVO noticeDetail(int a) {
		return boardMapper.notice_detail(a);
	}
	
	@Override
	public int noticeCount(int a) {
		return boardMapper.notice_count(a);
	}
	
	@Override
	public int notice_insert(NoticeVO nvo) {
		return boardMapper.notice_insert(nvo);
	}
	
	@Override
	public int noticeUpdate(NoticeVO nvo) {
		return boardMapper.notice_update(nvo);
	}
	
	@Override
	public int noticeDelete(int a) {
		return boardMapper.notice_delete(a);
	}
	
	@Override
	public ArrayList<NoticeVO> noticeSearch(String b) {
		return boardMapper.notice_search(b);
	}
	
	
	
	
}
