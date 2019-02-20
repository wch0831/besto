
package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.board.BoardFreeVO;
import com.com.board.BoardHithistoryVO;
import com.com.board.BoardBuyhistoryVO;
import com.com.board.BoardChallengeVO;

@Mapper
public interface BoardMapper{
	//public BoardFreeVO free_board_insert();
	public ArrayList<BoardFreeVO> free_board_select();
	
	public ArrayList<BoardChallengeVO> challenge_board_select();
	public ArrayList<BoardHithistoryVO> hithistory_board_select();
	public ArrayList<BoardBuyhistoryVO> buyhistory_board_select();
	
	public BoardFreeVO free_board_detail(int postSeq);

}
