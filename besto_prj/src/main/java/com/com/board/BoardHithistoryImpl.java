package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class BoardHithistoryImpl implements BoardHithistoryService{

	@Autowired
	private BoardMapper boardMapper ;

	public ArrayList<BoardHithistoryVO> BoardHithistoryList() {
		return boardMapper.hithistory_board_select();
	}

	
}
