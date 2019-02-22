package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper ;
	
	//�����Խ���
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
	
	//�����м���
	@Override
	public ArrayList<BoardChallengeVO> BoardChallengeList() {
		return boardMapper.challenge_board_select();
	}
	@Override
	public ArrayList<BoardChallengeVO> BoardChallengeDetail(int postSeq) {
		ArrayList<BoardChallengeVO> bvo = boardMapper.challenge_board_detail(postSeq);
		return bvo;
	}

	
	/*���ų���*/
	@Override
	public ArrayList<BoardBuyHistoryVO> BoardBuyHistoryList() {
		return boardMapper.buy_history_board_select();
	}

	
	//���߳���
	@Override
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList() {
		return boardMapper.hit_history_board_select();
	}
	
	
	//��������
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
