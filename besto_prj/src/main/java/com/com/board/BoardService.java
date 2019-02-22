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
	
	
	//��������
	public ArrayList<NoticeVO> noticeList();
	public NoticeVO noticeDetail(int a);
	public int noticeCount(int a);
	public int notice_insert(NoticeVO nvo);
	public int noticeUpdate(NoticeVO nvo);
	public int noticeDelete(int a);
	public ArrayList<NoticeVO> noticeSearch(String b);
	
	

	
	
}
