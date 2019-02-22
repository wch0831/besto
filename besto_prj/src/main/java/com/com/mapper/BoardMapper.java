
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
	public int free_board_update(BoardFreeVO vo);
	
	
	public ArrayList<BoardChallengeVO> challenge_board_select();
	public BoardChallengeVO challenge_board_detail(int postSeq);
	public int challenge_board_insert(BoardChallengeVO fvo);
	
	public ArrayList<BoardHitHistoryVO> hit_history_board_select();
	public BoardHitHistoryVO hit_history_board_detail(int postSeq);
	public int hit_history_board_insert(BoardHitHistoryVO fvo);
	
	
	
	
	public ArrayList<BoardBuyHistoryVO> buy_history_board_select();
	public BoardBuyHistoryVO buy_history_board_detail(int postSeq);
	public int buy_history_board_insert(BoardBuyHistoryVO fvo);
	
	
	
	public ArrayList<NoticeVO> notice_all();

}
