package com.com.game;

import java.util.ArrayList;

public interface GameService {
	

	public int svcGameInsert();

	public int svcGameInsert(GameVO vo);
	public int svcMatchInsert(GameVO vo);
	
	public ArrayList<MatchVO> svcGameSelect(GameVO vo);

	
	//public ArrayList<RecordRateVO> svcBuyNoteRecordRate(MatchVO mvo);//
	public ArrayList<GameVO> svcAvailableGame();
}
