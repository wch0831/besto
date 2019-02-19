package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.GameMapper;

@Service
public class GameServiceImpl implements GameService{
	
	@Autowired
	private GameMapper gameMapper;

	@Override
	public ArrayList<GameVO> svcGameInsert() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
