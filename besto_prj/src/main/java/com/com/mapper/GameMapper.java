package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.game.BettingVO;
import com.com.game.GameVO;
import com.com.game.MatchVO;
import com.com.game.RecordRateVO;

import com.com.game.MatchVO;
import com.com.game.RecordRateVO;
import com.com.game.VictoryRateVO;
import com.mypage.com.MypageVO;

@Mapper
public interface GameMapper {

	public int GameInsert();	
	//public ArrayList<RecordRateVO> buyNoteRecordRate(MatchVO mvo);//
	public ArrayList<GameVO> availableGame();

	public int gameInsert(GameVO vo);
	public int matchInsert(MatchVO vo);
	public ArrayList<MatchVO> gameInsertSelect(GameVO vo);
	public int victoryRateInsert(VictoryRateVO vo);
	public int recordRateInsert(RecordRateVO vo);
	public int selectSeq();
	public ArrayList<MatchVO> selectMseqList();
	public GameVO selectRecordSelect(int gseq);
	public int recordBuyInsert(RecordRateVO vo);
	public String userPw(int seq);
	public int recordCartInsert(MypageVO mvo);
	public ArrayList<MatchVO> gameAvailableSchedule(int seq);
	public ArrayList<GameVO> gameSchedule();
	
	/* �ȵ���̵� */
	public ArrayList<MatchVO> mGameAvailableSchedule();
	public GameVO selectVictorySelect(int gseq);

	public int selectBettingSeqNextValForSaveIntProperty();
	public int vintoryRateInsert(RecordRateVO vo);
	public int victoryRateInsertAfterOneInsert(RecordRateVO vo);

	
	public ArrayList<MatchVO> deadlineSelect(int seq);
	public int matchStatusUpdate(MatchVO vo);
	public int maxBettingSeq();
	public ArrayList<BettingVO> bettingSeqSelect(BettingVO vo);
	public int gameStatusUpdate(GameVO vo);
	
	public int selectCartSeqNextValForSaveIntProperty();
	public int cartVintoryRateInsert(RecordRateVO vo);
	public int victoryRateInsertCart(RecordRateVO vo);
}
