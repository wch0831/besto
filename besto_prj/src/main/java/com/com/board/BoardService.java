package com.com.board;

import java.util.ArrayList;

public interface BoardService {

	//�����Խ���
	public ArrayList<BoardFreeVO> BoardList();
	public BoardFreeVO boardFreeDetail(int postSeq);
	public int boardFreeInsert(BoardFreeVO fvo);
	public int boardFreeUpdate(BoardFreeVO fvo);
	public int boardFreeDelete(BoardFreeVO fvo);
	
	public int boardFreeReplyInsert(ReplyVO rvo);
	public int boardFreeReplyDelete(ReplyVO rvo);
	public ArrayList<ReplyVO> free_board_reply_select_after_delete(int postSeq);

	//�����м�
	public ArrayList<BoardChallengeVO> BoardChallengeList();
	public BoardChallengeVO BoardChallengeDetail(int postSeq);
	public int boardChallengeInsert(BoardChallengeVO fvo);
	public int boardChallengeUpdate(BoardChallengeVO fvo);
	public int boardChallengDelete(BoardChallengeVO fvo);

	//���߱��
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList();
	public BoardHitHistoryVO BoardFreeHitDetail(int postSeq);
	public int boardHitInsert(BoardHitHistoryVO fvo);
	public int boardHitUpdate(BoardHitHistoryVO fvo);
	public int boardHitDelete(BoardHitHistoryVO fvo);
	
	//�������
	public ArrayList<BoardBuyHistoryVO> boardBuyHistoryList();
	public BoardBuyHistoryVO BoardBuyHistoryDetail(int postSeq);
	public int boardBuyInsert(BoardBuyHistoryVO fvo);
	public int boardBuyUpdate(BoardBuyHistoryVO fvo);
	public int boardBuyDelete(BoardBuyHistoryVO fvo);
	
}
