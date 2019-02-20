package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;

@Service
public class GameServiceImpl implements GameService {
	@Autowired
	private GameMapper gameMapper;

	//game 추가 먼저
	@Override
	public int svcGameInsert(GameVO vo) {
		return gameMapper.gameInsert(vo);
	}
	
	//match 및 배당률 추가
	@Override
	public int svcMatchInsert(ArrayList<MatchVO> list) {
		int res = 0;
		int mres = 0;
		
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i).getMatchSeq()+"===============================");
			res += gameMapper.matchInsert(list.get(i));
			if(list.get(i).getVicVO() != null) {
				System.out.println(list.get(i).getVicVO().getMatchSeq()+"===============================");
				mres += gameMapper.victoryRateInsert(list.get(i).getVicVO());
			} else if(list.get(i).getRecVO() != null) {
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


	
//	public int svcGameInsert() {
//		return gameMapper.GameInsert();
//	}
}
