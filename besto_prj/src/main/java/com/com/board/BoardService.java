package com.com.board;

import java.util.ArrayList;
import java.util.Map;

public interface BoardService {

	//占쏙옙占쏙옙占쌉쏙옙占쏙옙
	public int free_board_total();
	public ArrayList<Map<String, Object>> free_board_select(Criteria cri);
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

	//占쏙옙占쌩깍옙占�
	public ArrayList<BoardHitHistoryVO> BoardHitHistoryList();
	public BoardHitHistoryVO BoardFreeHitDetail(int postSeq);
	public int boardHitInsert(BoardHitHistoryVO fvo);
	public int boardHitUpdate(BoardHitHistoryVO fvo);
	public int boardHitDelete(BoardHitHistoryVO fvo);
	
	//占쏙옙占쏙옙占쏙옙占�
	public ArrayList<BoardBuyHistoryVO> boardBuyHistoryList();
	public BoardBuyHistoryVO BoardBuyHistoryDetail(int postSeq);
	public int boardBuyInsert(BoardBuyHistoryVO fvo);
	public int boardBuyUpdate(BoardBuyHistoryVO fvo);
	public int boardBuyDelete(BoardBuyHistoryVO fvo);
	
	
	//占쏙옙占쏙옙占쏙옙占쏙옙
	public ArrayList<NoticeVO> noticeList();
	public NoticeVO noticeDetail(int a);
	public int noticeCount(int a);
	public int notice_insert(NoticeVO nvo);
	public int noticeUpdate(NoticeVO nvo);
	public int noticeDelete(int a);
	public ArrayList<NoticeVO> noticeSearch(String b);
	
	

	
	
}
