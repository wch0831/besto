package com.com.board;

import java.util.ArrayList;

public interface BoardService {

	//�����Խ���
	public ArrayList<BoardFreeVO> BoardList();
	public BoardFreeVO boardFreeDetail(int postSeq);
	public int boardFreeInsert(BoardFreeVO fvo);
	
	//�����м�
	public ArrayList<BoardChallengeVO> BoardChallengeList();
	public ArrayList<BoardChallengeVO> BoardChallengeDetail(int postSeq);
	
	//�������
	public ArrayList<BoardBuyHistoryVO> BoardBuyHistoryList();
	
	//���߱��
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList();
	
}
