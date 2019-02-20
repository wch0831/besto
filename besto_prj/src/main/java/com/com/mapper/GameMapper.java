package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.game.GameVO;
<<<<<<< HEAD
import com.com.game.MatchVO;
import com.com.game.RecordRateVO;

=======
import com.com.game.MatchVO;
import com.com.game.RecordRateVO;
import com.com.game.VictoryRateVO;
>>>>>>> branch 'master' of https://github.com/wch0831/besto

@Mapper
public interface GameMapper {

	public int GameInsert();	
	//public ArrayList<RecordRateVO> buyNoteRecordRate(MatchVO mvo);//
	public ArrayList<GameVO> availableGame();

	public int gameInsert(GameVO vo);
	public int matchInsert(MatchVO vo);
<<<<<<< HEAD
	public ArrayList<MatchVO> gameInsertSelect(GameVO vo);
=======
	public int victoryRateInsert(VictoryRateVO vo);
	public int recordRateInsert(RecordRateVO vo);
	public ArrayList<MatchVO> gameInsertSelect(GameVO vo);
	public int SelectSeq();

>>>>>>> branch 'master' of https://github.com/wch0831/besto
}
