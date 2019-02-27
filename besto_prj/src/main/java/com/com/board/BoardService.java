package com.com.board;

import java.util.ArrayList;

public interface BoardService {

	//자유게시판
	public ArrayList<BoardFreeVO> BoardList();
	public BoardFreeVO boardFreeDetail(int postSeq);
	public int boardFreeInsert(BoardFreeVO fvo);
	public int boardFreeUpdate(BoardFreeVO fvo);
	public int boardFreeDelete(BoardFreeVO fvo);
	
	public int boardFreeReplyInsert(ReplyVO rvo);
	public int boardFreeReplyDelete(ReplyVO rvo);
	public ArrayList<ReplyVO> free_board_reply_select_after_delete(int postSeq);

	//도전분석
	public ArrayList<BoardChallengeVO> BoardChallengeList();
	public BoardChallengeVO BoardChallengeDetail(int postSeq);
	public int boardChallengeInsert(BoardChallengeVO fvo);
	public int boardChallengeUpdate(BoardChallengeVO fvo);
	public int boardChallengDelete(BoardChallengeVO fvo);

	//적중기록
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList();
	public BoardHitHistoryVO BoardFreeHitDetail(int postSeq);
	public int boardHitInsert(BoardHitHistoryVO fvo);
	public int boardHitUpdate(BoardHitHistoryVO fvo);
	public int boardHitDelete(BoardHitHistoryVO fvo);
	
	//베팅토론
	public ArrayList<BoardBuyHistoryVO> boardBuyHistoryList();
	public BoardBuyHistoryVO BoardBuyHistoryDetail(int postSeq);
	public int boardBuyInsert(BoardBuyHistoryVO fvo);
	public int boardBuyUpdate(BoardBuyHistoryVO fvo);
	public int boardBuyDelete(BoardBuyHistoryVO fvo);
	
}
