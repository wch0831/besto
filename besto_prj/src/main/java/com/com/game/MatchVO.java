package com.com.game;

import java.util.ArrayList;
import java.util.HashMap;

public class MatchVO {
	private int matchSeq;
	private int gameSeq;
	private String matchStarttime;
	private int matchHometeam;
	private int matchAwayteam;
	private String matchVsrecord;
	private String matchStadium;
	private String matchStatus;
	private int usersSeq;
	private int gameMno;
	
	
	private TeamVO teamVO;
	private GameVO gameVO;
	private RecordRateVO recordRateVO;
	
	private String homeTeamName;
	private String awayTeamName;
	
	public String gameGubun;
	private ArrayList<RecordRateVO> recordRateVOList;
	private ArrayList<VictoryRateVO> victoryRateVOList;

	private VictoryRateVO vicVO;
	private RecordRateVO recVO;
	
	private MatchResultVO mrVO;
	
	
	public MatchResultVO getMrVO() {
		return mrVO;
	}
	public void setMrVO(MatchResultVO mrVO) {
		this.mrVO = mrVO;
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
	public int getMatchHometeam() {
		return matchHometeam;
	}
	public void setMatchHometeam(int matchHometeam) {
		this.matchHometeam = matchHometeam;
	}
	public int getMatchAwayteam() {
		return matchAwayteam;
	}
	public void setMatchAwayteam(int matchAwayteam) {
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
	public int getGameMno() {
		return gameMno;
	}
	public void setGameMno(int gameMno) {
		this.gameMno = gameMno;
	}
	public TeamVO getTeamVO() {
		return teamVO;
	}
	public void setTeamVO(TeamVO teamVO) {
		this.teamVO = teamVO;
	}
	public GameVO getGameVO() {
		return gameVO;
	}
	public void setGameVO(GameVO gameVO) {
		this.gameVO = gameVO;
	}
	public RecordRateVO getRecordRateVO() {
		return recordRateVO;
	}
	public void setRecordRateVO(RecordRateVO recordRateVO) {
		this.recordRateVO = recordRateVO;
	}
	public String getHomeTeamName() {
		return homeTeamName;
	}
	public void setHomeTeamName(String homeTeamName) {
		this.homeTeamName = homeTeamName;
	}
	public String getAwayTeamName() {
		return awayTeamName;
	}
	public void setAwayTeamName(String awayTeamName) {
		this.awayTeamName = awayTeamName;
	}
	public String getGameGubun() {
		return gameGubun;
	}
	public void setGameGubun(String gameGubun) {
		this.gameGubun = gameGubun;
	}
	public ArrayList<RecordRateVO> getRecordRateVOList() {
		return recordRateVOList;
	}
	public void setRecordRateVOList(ArrayList<RecordRateVO> recordRateVOList) {
		this.recordRateVOList = recordRateVOList;
	}
	public ArrayList<VictoryRateVO> getVictoryRateVOList() {
		return victoryRateVOList;
	}
	public void setVictoryRateVOList(ArrayList<VictoryRateVO> victoryRateVOList) {
		this.victoryRateVOList = victoryRateVOList;
	}
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
	
		
}
