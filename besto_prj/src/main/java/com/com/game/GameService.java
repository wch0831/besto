package com.com.game;

import java.util.ArrayList;

public interface GameService {
	
	public int svcGameInsert();
	
	//public ArrayList<RecordRateVO> svcBuyNoteRecordRate(MatchVO mvo);//
	public ArrayList<GameVO> svcAvailableGame();
}
