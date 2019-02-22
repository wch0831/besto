package com.com.board;

import java.util.ArrayList;

public interface BoardService {

	//자유게시판
	public ArrayList<BoardFreeVO> BoardList();
	public BoardFreeVO boardFreeDetail(int postSeq);
	public int boardFreeInsert(BoardFreeVO fvo);
	public int boardFreeUpdate(BoardFreeVO fvo);
	
	
	//도전분석
	public ArrayList<BoardChallengeVO> BoardChallengeList();
	public BoardChallengeVO BoardChallengeDetail(int postSeq);
	public int boardChallengeInsert(BoardChallengeVO fvo);
	

	//적중기록
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList();
	public BoardHitHistoryVO BoardFreeHitDetail(int postSeq);
	public int boardHitInsert(BoardHitHistoryVO fvo);
	

	
	//베팅토론
	public ArrayList<BoardBuyHistoryVO> BoardBuyHistoryList();
	public BoardBuyHistoryVO BoardBuyHistoryDetail(int postSeq);
	public int boardBuyInsert(BoardBuyHistoryVO fvo);
	
	
}
