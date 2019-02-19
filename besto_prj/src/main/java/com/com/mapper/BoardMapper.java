package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.besto.boardfree.BoardFreeVO;

@Mapper
public interface BoardMapper{
	//public BoardFreeVO free_board_insert();
	public ArrayList<BoardFreeVO> free_board_select();
	
	
}
