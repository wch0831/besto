
package com.com.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.com.board.BoardFreeVO;

import com.com.board.BoardHitHistoryVO;
import com.com.board.Criteria;
import com.com.board.BoardBuyHistoryVO;

import com.com.board.NoticeVO;

import com.com.board.BoardChallengeVO;

@Mapper
public interface BoardMapper{
	

	//占쏙옙占쏙옙占쏙옙占쏙옙
	public ArrayList<NoticeVO> notice_all();
	public int notice_count(int a);
	public NoticeVO notice_detail(int a);
	public int notice_insert(NoticeVO nvo);
	public int notice_update(NoticeVO nvo);
	public int notice_delete(int a);
	public ArrayList<NoticeVO> notice_search(String b);
	

	//占쏙옙占쏙옙占쌉쏙옙占쏙옙
	public int free_board_total();
	public ArrayList<Map<String, Object>> free_board_select(Criteria cri); //占쏙옙占�
	public BoardFreeVO free_board_detail(int postSeq); //占쏙옙
	public int free_board_insert(BoardFreeVO fvo); //占쏙옙占�
	public int free_board_update(BoardFreeVO vo); //占쏙옙占쏙옙
	
	//占쏙옙占쏙옙占싻쇽옙占쏙옙
	public ArrayList<BoardChallengeVO> challenge_board_select(); //占쏙옙占�
	public BoardChallengeVO challenge_board_detail(int postSeq); //占쏙옙
	public int challenge_board_insert(BoardChallengeVO fvo); //占쏙옙占�
	public int challenge_board_update(BoardChallengeVO vo); //占쏙옙占쏙옙
	
	//占쏙옙占쏙옙占쏙옙橘占�
	public ArrayList<BoardHitHistoryVO> hit_history_board_select(); //占쏙옙占�
	public BoardHitHistoryVO hit_history_board_detail(int postSeq); //占쏙옙
	public int hit_history_board_insert(BoardHitHistoryVO fvo); //占쏙옙占�
	public int hit_history_board_update(BoardHitHistoryVO vo); //占쏙옙占쏙옙
	
	//占쏙옙占쏙옙占쏙옙橘占�
	public ArrayList<BoardBuyHistoryVO> buy_history_board_select(); //占쏙옙占�
	public BoardBuyHistoryVO buy_history_board_detail(int postSeq); //占쏙옙
	public int buy_history_board_insert(BoardBuyHistoryVO fvo); //占쏙옙占�
	public int buy_history_board_update(BoardBuyHistoryVO vo); //占쏙옙占쏙옙
	
	//안드로이드용
	public ArrayList<BoardFreeVO> androidBoardFree();
	
	
	

}
