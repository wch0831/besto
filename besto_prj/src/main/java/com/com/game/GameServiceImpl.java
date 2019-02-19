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
	
//	public int svcGameInsert() {
//		return gameMapper.GameInsert();
//	}
=======

	@Override
	public ArrayList<GameVO> svcGameInsert() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
>>>>>>> branch 'master' of https://github.com/wch0831/besto
}
