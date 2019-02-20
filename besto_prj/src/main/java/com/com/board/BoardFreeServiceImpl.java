package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class BoardFreeServiceImpl implements BoardFreeService{

	@Autowired
	private BoardMapper boardMapper ;

	public ArrayList<BoardFreeVO> BoardList() {
		return boardMapper.free_board_select();
	}

	
}
