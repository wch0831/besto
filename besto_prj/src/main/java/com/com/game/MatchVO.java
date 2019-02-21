package com.com.game;

import java.util.ArrayList;
import java.util.HashMap;

public class MatchVO {
	private int matchSeq;
	private int gameSeq;
	private String matchStarttime;
	private String matchHometeam;
	private String matchAwayteam;
	private String matchVsrecord;
	private String matchStadium;
	private String matchStatus;
	private int usersSeq;
	
	
	//---------------------------------------------------------------
	//board_open_window_history.jsp 기록식 게임 체크박스 체크 시 구매내역확인 자동완성을 위한 프로퍼티
	//@RestController gameInsert(MatchVO matchVO) { matchVO.getRecordRateVOList() }에 사용
	private ArrayList<RecordRateVO> recordRateVOList;
	public ArrayList<RecordRateVO> getRecordRateVOList() {
		return recordRateVOList;
	}
	public void setRecordRateVOList(ArrayList<RecordRateVO> recordRateVOList) {
		this.recordRateVOList = recordRateVOList;
	}
	//---------------------------------------------------------------
	
	
	
	private VictoryRateVO vicVO;
	private RecordRateVO recVO;
	
	public VictoryRateVO getVicVO() {
		return vicVO;
	}
	public void setVicVO(VictoryRateVO vicVO) {
		this.vicVO = vicVO;
	}
	public RecordRateVO getRecVO() {
		return recVO;
	}
	public void setRecVO(RecordRateVO recVO) {
		this.recVO = recVO;
	}
	
	public int getMatchSeq() {
		return matchSeq;
	}
	public void setMatchSeq(int matchSeq) {
		this.matchSeq = matchSeq;
	}
	public int getGameSeq() {
		return gameSeq;
	}
	public void setGameSeq(int gameSeq) {
		this.gameSeq = gameSeq;
	}
	public String getMatchStarttime() {
		return matchStarttime;
	}
	public void setMatchStarttime(String matchStarttime) {
		this.matchStarttime = matchStarttime;
	}
	public String getMatchHometeam() {
		return matchHometeam;
	}
	public void setMatchHometeam(String matchHometeam) {
		this.matchHometeam = matchHometeam;
	}
	public String getMatchAwayteam() {
		return matchAwayteam;
	}
	public void setMatchAwayteam(String matchAwayteam) {
		this.matchAwayteam = matchAwayteam;
	}
	public String getMatchVsrecord() {
		return matchVsrecord;
	}
	public void setMatchVsrecord(String matchVsrecord) {
		this.matchVsrecord = matchVsrecord;
	}
	public String getMatchStadium() {
		return matchStadium;
	}
	public void setMatchStadium(String matchStadium) {
		this.matchStadium = matchStadium;
	}
	public String getMatchStatus() {
		return matchStatus;
	}
	public void setMatchStatus(String matchStatus) {
		this.matchStatus = matchStatus;
	}
	public int getUsersSeq() {
		return usersSeq;
	}
	public void setUsersSeq(int usersSeq) {
		this.usersSeq = usersSeq;
	}
	
		
}
