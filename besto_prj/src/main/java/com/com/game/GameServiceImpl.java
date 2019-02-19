package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;

@Service
public class GameServiceImpl implements GameService{
	
	@Autowired
	private GameMapper gameMapper;
	
	public int svcGameInsert() {
		return gameMapper.GameInsert();
	}

	
//	public ArrayList<RecordRateVO> svcBuyNoteRecordRate(MatchVO mvo) {		
//		return gameMapper.buyNoteRecordRate(mvo);
//	}
	public ArrayList<GameVO> svcAvailableGame(){
		return gameMapper.availableGame();
	}
}
