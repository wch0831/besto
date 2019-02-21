package com.com.board;

import java.util.ArrayList;

public interface BoardService {

	//자유게시판
	public ArrayList<BoardFreeVO> BoardList();
	public BoardFreeVO boardFreeDetail(int postSeq);
	public int boardFreeInsert(BoardFreeVO fvo);
	
	//도전분석
	public ArrayList<BoardChallengeVO> BoardChallengeList();
	public ArrayList<BoardChallengeVO> BoardChallengeDetail(int postSeq);
	
	//베팅토론
	public ArrayList<BoardBuyHistoryVO> BoardBuyHistoryList();
	
	//적중기록
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList();
	
}
