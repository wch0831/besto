package com.besto.boardfree;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.com.mapper.BoardMapper;

public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper boardMapper ;

	@Override
	public ArrayList<BoardFreeVO> BoardList() {
		return boardMapper.free_board_select();
	}

	
}
