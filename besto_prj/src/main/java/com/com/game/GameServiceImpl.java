package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;

@Service

public class GameServiceImpl implements GameService{


	@Autowired
	private GameMapper gameMapper;

	//game 추가 먼저
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

	
	//match 및 배당률 추가
	@Override
	public int svcMatchInsert(ArrayList<MatchVO> list) {
		int res = 0;
		int mres = 0;
		int count = 0;
		ArrayList<MatchVO> mlist = gameMapper.selectMseqList();
		
		System.out.println(list.size()+ " " +mlist.size()+ " ==================================================== ");
		
		for(int i=0; i<list.size(); i++) {
			// match게임 insert에서 게임이 등록 되어있는지 아닌지 확인 seq로 확인
			for(int j=0; j<mlist.size(); j++) {
				if(list.get(i).getMatchSeq() == mlist.get(i).getMatchSeq()) { //비교문 xx
					count += 1;
				}
			}
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
		System.out.println(res+"건 매치가 등록");
		System.out.println(mres+"건 배당률 등록");
		return res;
	}
	
	@Override
	public ArrayList<MatchVO> svcGameSelect(GameVO vo) {
		ArrayList<MatchVO> list = gameMapper.gameInsertSelect(vo);
		return list;
	}

	@Override
	public int svcSelectSeq() {
		return gameMapper.SelectSeq();
	}



	@Override
	public int svcGameInsert() {
		// TODO Auto-generated method stub
		return 0;
	}


	
//	public int svcGameInsert() {
//		return gameMapper.GameInsert();
//	}

}
