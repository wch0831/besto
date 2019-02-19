package com.com.game;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;

@Service
public class GameServiceImpl implements GameService {
	
	@Autowired
	private GameMapper gameMapper;
	
//	public int svcGameInsert() {
//		return gameMapper.GameInsert();
//	}
}
