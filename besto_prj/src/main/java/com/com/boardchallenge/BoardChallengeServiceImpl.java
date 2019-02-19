package com.com.boardchallenge;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class BoardChallengeServiceImpl implements BoardChallengeService{

	@Autowired
	private BoardMapper boardMapper ;

	public ArrayList<BoardChallengeVO> BoardChallengeList() {
		return boardMapper.challenge_board_select();
	}

	
}
