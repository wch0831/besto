
package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.board.BoardFreeVO;

import com.com.board.BoardHitHistoryVO;
import com.com.board.BoardBuyHistoryVO;

import com.com.board.NoticeVO;
import com.com.board.ReplyVO;
import com.com.board.BoardChallengeVO;

@Mapper
public interface BoardMapper{
	
	//�����Խ���
	public ArrayList<BoardFreeVO> free_board_select(); //���
	public BoardFreeVO free_board_detail(int postSeq); //��
	public int free_board_insert(BoardFreeVO fvo); //���
	public int free_board_update(BoardFreeVO vo); //����
	public int free_board_delete(BoardFreeVO vo); //����
	
	public int free_board_reply_insert(ReplyVO vo);
	public int free_board_reply_delete(ReplyVO vo);
	public ArrayList<ReplyVO> free_board_reply_select_after_delete(int postSeq);
	public int free_board_reply_update(ReplyVO vo);
	
	//�����м���
	public ArrayList<BoardChallengeVO> challenge_board_select(); //���
	public BoardChallengeVO challenge_board_detail(int postSeq); //��
	public int challenge_board_insert(BoardChallengeVO fvo); //���
	public int challenge_board_update(BoardChallengeVO vo); //����
	public int challenge_board_delete(BoardChallengeVO vo);//����
	//������й�
	public ArrayList<BoardHitHistoryVO> hit_history_board_select(); //���
	public BoardHitHistoryVO hit_history_board_detail(int postSeq); //��
	public int hit_history_board_insert(BoardHitHistoryVO fvo); //���
	public int hit_history_board_update(BoardHitHistoryVO vo); //����
	public int hit_history_board_delete(BoardHitHistoryVO vo);//����
	//������й�
	public ArrayList<BoardBuyHistoryVO> buy_history_board_select(); //���
	public BoardBuyHistoryVO buy_history_board_detail(int postSeq); //��
	public int buy_history_board_insert(BoardBuyHistoryVO fvo); //���
	public int buy_history_board_update(BoardBuyHistoryVO vo); //����
	public int buy_history_board_delete(BoardBuyHistoryVO vo);
	
	

	
	public ArrayList<NoticeVO> notice_all();

}
