package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;

@Service
public class GameServiceImpl implements GameService {
	
	@Autowired
	private GameMapper gameMapper;

	@Override
	public int svcGameInsert(GameVO vo) {
		return gameMapper.gameInsert(vo);
	}

	@Override
	public ArrayList<MatchVO> svcGameSelect(GameVO vo) {
		ArrayList<MatchVO> list = gameMapper.gameInsertSelect(vo);
		return list;
	}
}
