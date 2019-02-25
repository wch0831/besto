
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
	
	//자유게시판
	public ArrayList<BoardFreeVO> free_board_select(); //목록
	public BoardFreeVO free_board_detail(int postSeq); //상세
	public int free_board_insert(BoardFreeVO fvo); //등록
	public int free_board_update(BoardFreeVO vo); //수정
	
	//도전분석방
	public ArrayList<BoardChallengeVO> challenge_board_select(); //목록
	public BoardChallengeVO challenge_board_detail(int postSeq); //상세
	public int challenge_board_insert(BoardChallengeVO fvo); //등록
	public int challenge_board_update(BoardChallengeVO vo); //수정
	
	//적중토론방
	public ArrayList<BoardHitHistoryVO> hit_history_board_select(); //목록
	public BoardHitHistoryVO hit_history_board_detail(int postSeq); //상세
	public int hit_history_board_insert(BoardHitHistoryVO fvo); //등록
	public int hit_history_board_update(BoardHitHistoryVO vo); //수정
	
	//베팅토론방
	public ArrayList<BoardBuyHistoryVO> buy_history_board_select(); //목록
	public BoardBuyHistoryVO buy_history_board_detail(int postSeq); //상세
	public int buy_history_board_insert(BoardBuyHistoryVO fvo); //등록
	public int buy_history_board_update(BoardBuyHistoryVO vo); //수정
	
	
	public ArrayList<NoticeVO> notice_all();

}
