package com.com.match;

import java.util.ArrayList;
import com.com.game.MatchVO;

public interface MatchService {
	public ArrayList<MatchVO> todayMatchList();
	public ArrayList<MatchVO> matchList();
}
