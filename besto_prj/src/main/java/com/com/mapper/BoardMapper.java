
package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.board.BoardFreeVO;

import com.com.board.BoardHitHistoryVO;
import com.com.board.BoardBuyHistoryVO;

import com.com.board.NoticeVO;

import com.com.board.BoardChallengeVO;

@Mapper
public interface BoardMapper{
	
	//public BoardFreeVO free_board_insert();
	public ArrayList<BoardFreeVO> free_board_select();
	public BoardFreeVO free_board_detail(int postSeq);
	public int free_board_insert(BoardFreeVO fvo);
	
	public ArrayList<BoardChallengeVO> challenge_board_select();

	public ArrayList<NoticeVO> notice_all();
	public int notice_count(int a);
	public NoticeVO notice_detail(int a);
	public int notice_insert(NoticeVO nvo);
	public int notice_update(NoticeVO nvo);
	public int notice_delete(int a);
	public ArrayList<NoticeVO> notice_search(String b);
	

	public ArrayList<BoardChallengeVO> challenge_board_detail(int postSeq);
	
	public ArrayList<BoardHitHistoryVO> hit_history_board_select();

	public ArrayList<BoardBuyHistoryVO> buy_history_board_select();
	
	
	
	

}
