package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.game.GameVO;
import com.com.game.MatchVO;
import com.com.game.RecordRateVO;


@Mapper
public interface GameMapper {

	public int GameInsert();	
	//public ArrayList<RecordRateVO> buyNoteRecordRate(MatchVO mvo);//
	public ArrayList<GameVO> availableGame();

	public int gameInsert(GameVO vo);
	public int matchInsert(MatchVO vo);
	public ArrayList<MatchVO> gameInsertSelect(GameVO vo);
}
