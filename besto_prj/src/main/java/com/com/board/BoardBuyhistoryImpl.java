package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class BoardBuyhistoryImpl implements BoardBuyhistoryService{

	@Autowired
	private BoardMapper boardMapper ;

	public ArrayList<BoardBuyhistoryVO> BoardBuyhistoryList() {
		return boardMapper.buyhistory_board_select();
	}

	
}
