
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
	

	//��������
	public ArrayList<NoticeVO> notice_all();
	public int notice_count(int a);
	public NoticeVO notice_detail(int a);
	public int notice_insert(NoticeVO nvo);
	public int notice_update(NoticeVO nvo);
	public int notice_delete(int a);
	public ArrayList<NoticeVO> notice_search(String b);
	

	//�����Խ���
	public int free_board_total();
	public ArrayList<Map<String, Object>> free_board_select(Criteria cri); //���
	public BoardFreeVO free_board_detail(int postSeq); //��
	public int free_board_insert(BoardFreeVO fvo); //���
	public int free_board_update(BoardFreeVO vo); //����
	
	//�����м���
	public ArrayList<BoardChallengeVO> challenge_board_select(); //���
	public BoardChallengeVO challenge_board_detail(int postSeq); //��
	public int challenge_board_insert(BoardChallengeVO fvo); //���
	public int challenge_board_update(BoardChallengeVO vo); //����
	
	//������й�
	public ArrayList<BoardHitHistoryVO> hit_history_board_select(); //���
	public BoardHitHistoryVO hit_history_board_detail(int postSeq); //��
	public int hit_history_board_insert(BoardHitHistoryVO fvo); //���
	public int hit_history_board_update(BoardHitHistoryVO vo); //����
	
	//������й�
	public ArrayList<BoardBuyHistoryVO> buy_history_board_select(); //���
	public BoardBuyHistoryVO buy_history_board_detail(int postSeq); //��
	public int buy_history_board_insert(BoardBuyHistoryVO fvo); //���
	public int buy_history_board_update(BoardBuyHistoryVO vo); //����
	
	
	
	

}
