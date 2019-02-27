package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;
import com.mypage.com.MypageVO;

@Service

public class GameServiceImpl implements GameService{

	@Autowired
	private GameMapper gameMapper;

	//game 異붽� 癒쇱�
	@Override
	public int svcGameInsert(GameVO vo) {
		return gameMapper.gameInsert(vo);
	}



	//	public ArrayList<RecordRateVO> svcBuyNoteRecordRate(MatchVO mvo) {		
	//		return gameMapper.buyNoteRecordRate(mvo);
	//	}
	public ArrayList<GameVO> svcAvailableGame(){
		return gameMapper.availableGame();
	}


	//match 諛� 諛곕떦瑜� 異붽�
	@Override
	public int svcMatchInsert(ArrayList<MatchVO> list) {
		int res = 0;
		int mres = 0;
		int count = 0;
		int gameMno = 1;
		ArrayList<MatchVO> mlist = gameMapper.selectMseqList();

		System.out.println(list.size()+ " " +mlist.size()+ " ==================================================== ");

		for(int i=0; i<list.size(); i++) {
			for(int m=0; m<list.size(); m++) {
				list.get(m).setGameMno(gameMno);
				gameMno++;
			}
			// match寃뚯엫 insert�뿉�꽌 寃뚯엫�씠 �벑濡� �릺�뼱�엳�뒗吏� �븘�땶吏� �솗�씤 seq濡� �솗�씤
			for(int j=0; j<mlist.size(); j++) {

				if(list.get(i).getMatchSeq() == mlist.get(j).getMatchSeq()) { //鍮꾧탳臾� xx
					count += 1;
				}
			}

			//match媛� �벑濡� �븞�릺�뼱�엳�쑝硫� �벑濡앺빐�씪
			if(count == 0) {
				res += gameMapper.matchInsert(list.get(i));
			}
			if(list.get(i).getGameGubun().equals("v")) {
				mres += gameMapper.victoryRateInsert(list.get(i).getVicVO());
			} 
			else if(list.get(i).getGameGubun().equals("r")) {
				mres += gameMapper.recordRateInsert(list.get(i).getRecVO());
			}
		}
		System.out.println(res+"嫄� 留ㅼ튂媛� �벑濡�");
		System.out.println(mres+"嫄� 諛곕떦瑜� �벑濡�");
		return res;
	}

	@Override
	public ArrayList<MatchVO> svcGameSelect(GameVO vo) {
		ArrayList<MatchVO> list = gameMapper.gameInsertSelect(vo);
		return list;
	}

	@Override
	public int svcSelectSeq() {
		return gameMapper.selectSeq();
	}

	@Override
	public GameVO svcGameRecordSelect(int gseq) {
		return gameMapper.selectRecordSelect(gseq);
	}



	@Override
	public int svcRecordInsert(RecordRateVO vo) {
		return gameMapper.recordBuyInsert(vo);
	}



	@Override
	public String svcUserPw(int seq) {
		return gameMapper.userPw(seq);
	}



	@Override
	public int svcCartInsert(MypageVO mvo) {
		return gameMapper.recordCartInsert(mvo);
	}



	@Override
	public ArrayList<MatchVO> svcGameAvailableSchedule(int seq) {
		return gameMapper.gameAvailableSchedule(seq);
	}



	@Override
	public ArrayList<GameVO> svcGameSchedule() {
		return gameMapper.gameSchedule();
	}



	@Override
	public ArrayList<MatchVO> mGameAvailableSchedule() {
		return gameMapper.mGameAvailableSchedule();
	}
	@Override
	public GameVO svcGameVictorySelect(int gseq) {
		return gameMapper.selectVictorySelect(gseq);
	}



	@Override
	public ArrayList<MatchVO> svcGameDeadline(int seq) {
		return gameMapper.deadlineSelect(seq);
	}



	@Override
	public int svcMatchStatusUpdate(MatchVO vo) {
		return gameMapper.matchStatusUpdate(vo);
	}



	@Override
	public int svcMaxBettingSeq() {
		return gameMapper.maxBettingSeq();
	}



	@Override
	public ArrayList<BettingVO> svcBettingSeqSelect(BettingVO vo) {
		return gameMapper.bettingSeqSelect(vo);
	}



	@Override
	public int svcGameStatusUpdate(GameVO vo) {
		return gameMapper.gameStatusUpdate(vo);
	}



}
