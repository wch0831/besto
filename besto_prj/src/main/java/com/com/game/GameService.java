package com.com.game;

import java.util.ArrayList;

public interface GameService {
	
	public int svcGameInsert(GameVO vo);
	
	public ArrayList<MatchVO> svcGameSelect(GameVO vo);
	
}
