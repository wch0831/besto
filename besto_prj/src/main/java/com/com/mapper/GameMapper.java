package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.game.GameVO;
import com.com.game.MatchVO;
import com.com.game.RecordRateVO;
import com.com.game.VictoryRateVO;

@Mapper
public interface GameMapper {
	public int gameInsert(GameVO vo);
	public int matchInsert(MatchVO vo);
	public int victoryRateInsert(VictoryRateVO vo);
	public int recordRateInsert(RecordRateVO vo);
	public ArrayList<MatchVO> gameInsertSelect(GameVO vo);
	public int SelectSeq();
	public ArrayList<MatchVO> selectMseqList();

}
