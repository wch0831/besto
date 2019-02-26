package com.com.board;

import java.util.ArrayList;
import java.util.Map;

public interface BoardService {

	//�����Խ���
	public int free_board_total();
	public ArrayList<Map<String, Object>> free_board_select(Criteria cri);
	public BoardFreeVO boardFreeDetail(int postSeq);
	public int boardFreeInsert(BoardFreeVO fvo);
	public int boardFreeUpdate(BoardFreeVO fvo);
	
	
	//�����м�
	public ArrayList<BoardChallengeVO> BoardChallengeList();
	public BoardChallengeVO BoardChallengeDetail(int postSeq);
	public int boardChallengeInsert(BoardChallengeVO fvo);
	public int boardChallengeUpdate(BoardChallengeVO fvo);

	//���߱��
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList();
	public BoardHitHistoryVO BoardFreeHitDetail(int postSeq);
	public int boardHitInsert(BoardHitHistoryVO fvo);
	public int boardHitUpdate(BoardHitHistoryVO fvo);
	
	//�������
	public ArrayList<BoardBuyHistoryVO> boardBuyHistoryList();
	public BoardBuyHistoryVO BoardBuyHistoryDetail(int postSeq);
	public int boardBuyInsert(BoardBuyHistoryVO fvo);
	public int boardBuyUpdate(BoardBuyHistoryVO fvo);
	
	
	//��������
	public ArrayList<NoticeVO> noticeList();
	public NoticeVO noticeDetail(int a);
	public int noticeCount(int a);
	public int notice_insert(NoticeVO nvo);
	public int noticeUpdate(NoticeVO nvo);
	public int noticeDelete(int a);
	public ArrayList<NoticeVO> noticeSearch(String b);
	
	

	
	
}
