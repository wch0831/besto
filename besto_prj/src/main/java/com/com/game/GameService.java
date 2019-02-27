package com.com.game;

import java.util.ArrayList;

import com.mypage.com.MypageVO;

public interface GameService {
	
	public int svcGameInsert(GameVO vo);
	public int svcMatchInsert(ArrayList<MatchVO> list);
	public int svcSelectSeq();
	public int svcRecordInsert(RecordRateVO vo);
	
	public String svcUserPw(int seq);
	
	public ArrayList<MatchVO> svcGameSelect(GameVO vo);
	public GameVO svcGameRecordSelect(int gseq);
	
	//public ArrayList<RecordRateVO> svcBuyNoteRecordRate(MatchVO mvo);//
	public ArrayList<GameVO> svcAvailableGame();
	
	public int svcCartInsert(MypageVO mvo);
	public ArrayList<MatchVO> svcGameAvailableSchedule(int seq);
	
	
	/* 안드로이드 */
	public ArrayList<MatchVO> mGameAvailableSchedule();
	public ArrayList<GameVO> svcGameSchedule();
	
}
