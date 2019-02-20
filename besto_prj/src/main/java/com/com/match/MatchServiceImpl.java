package com.com.match;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.game.MatchVO;
import com.com.mapper.GameMapper;
import com.com.mapper.MatchMapper;

@Service
public class MatchServiceImpl implements MatchService {
	@Autowired
	private MatchMapper matchMapper;


	@Override
	public ArrayList<MatchVO> todayMatchList() {
		
		return matchMapper.todayMatchList();
	}



	
//	public int svcGameInsert() {
//		return gameMapper.GameInsert();
//	}
}
