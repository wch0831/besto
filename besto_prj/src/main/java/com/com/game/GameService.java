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
	public GameVO svcGameVictorySelect(int gseq);
	
	//public ArrayList<RecordRateVO> svcBuyNoteRecordRate(MatchVO mvo);//
	public ArrayList<GameVO> svcAvailableGame();
	
	public int svcCartInsert(MypageVO mvo);
	public ArrayList<MatchVO> svcGameAvailableSchedule(int seq);
	
	
	/* �ȵ���̵� */
	public ArrayList<MatchVO> mGameAvailableSchedule();
	public ArrayList<GameVO> svcGameSchedule();
	
	//LMK
	public int selectBettingSeqNextValForSaveIntProperty();
	public int vintoryRateInsert(RecordRateVO vo);
	public int victoryRateInsertAfterOneInsert(RecordRateVO vo);

	public ArrayList<MatchVO> svcGameDeadline(int seq);
	public int svcMatchStatusUpdate(MatchVO vo);
	public int svcMaxBettingSeq();
	public ArrayList<BettingVO> svcBettingSeqSelect(BettingVO vo);
	public int svcGameStatusUpdate(GameVO vo);
	
	
	//WCH
	public int selectCartSeqNextValForSaveIntProperty();
	public int cartVintoryRateInsert(RecordRateVO vo);
	public int victoryRateInsertCart(RecordRateVO vo);
	
}
