package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;

@Service
<<<<<<< HEAD
public class GameServiceImpl implements GameService {
=======
public class GameServiceImpl implements GameService{
>>>>>>> branch 'master' of https://github.com/wch0831/besto
	
	@Autowired
	private GameMapper gameMapper;
<<<<<<< HEAD

	@Override
	public int svcGameInsert(GameVO vo) {
		return gameMapper.gameInsert(vo);
	}
	
	@Override
	public int svcMatchInsert(GameVO vo) {
		int res = 0;
		for(int i=0; i<vo.getMatchlist().size(); i++) {
			res += gameMapper.matchInsert(vo.getMatchlist().get(i));
		}
		return res;
	}
	
	@Override
	public ArrayList<MatchVO> svcGameSelect(GameVO vo) {
		ArrayList<MatchVO> list = gameMapper.gameInsertSelect(vo);
		return list;
	}


=======
	
//	public int svcGameInsert() {
//		return gameMapper.GameInsert();
//	}
>>>>>>> branch 'master' of https://github.com/wch0831/besto
}
