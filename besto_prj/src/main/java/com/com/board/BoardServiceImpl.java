package com.com.board;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper ;
	
	
	//ï¿½ï¿½ï¿½ï¿½ï¿½Ô½ï¿½ï¿½ï¿½
	@Override
	public int free_board_total() {
		// TODO Auto-generated method stub
		return boardMapper.free_board_total();
	}
	@Override
	public ArrayList<Map<String, Object>> free_board_select(Criteria cri) {
		// TODO Auto-generated method stub
		return boardMapper.free_board_select(cri);
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
	
	@Override
	public int boardFreeDelete(BoardFreeVO vo) {
		return boardMapper.free_board_delete(vo);
	}
	@Override
	public int boardFreeReplyInsert(ReplyVO rvo) {
		return boardMapper.free_board_reply_insert(rvo);
	}
	
	public int boardFreeReplyDelete(ReplyVO rvo) {
		return boardMapper.free_board_reply_delete(rvo);
	}
	@Override
	public ArrayList<ReplyVO> free_board_reply_select_after_delete(int postSeq) {
		// TODO Auto-generated method stub
		return boardMapper.free_board_reply_select_after_delete(postSeq);
	}
	
	//ï¿½ï¿½ï¿½ï¿½ï¿½Ð¼ï¿½ï¿½ï¿½
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
	
	@Override
	public int boardChallengDelete(BoardChallengeVO vo) {
		return boardMapper.challenge_board_delete(vo);
	}
	
	
	//ï¿½ï¿½ï¿½ß³ï¿½ï¿½ï¿½
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
	
	@Override
	public int boardHitDelete(BoardHitHistoryVO vo) {
		return boardMapper.hit_history_board_delete(vo);
	}
	
	
	/*±¸¸Å³»¿ª*/
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
	
	@Override
	public int boardBuyDelete(BoardBuyHistoryVO vo) {
		return boardMapper.buy_history_board_delete(vo);
	}

	

	
	
	
	//ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
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
