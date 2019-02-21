package com.com.game;

public class MatchVO {
	private int matchSeq;
	private int gameSeq;
	private String matchStarttime;
	private String matchHometeam;
	private String matchAwayteam;
	private int tcode1;
	private int tcode2;
	private String matchVsrecord;
	private String matchStadium;
	private String matchStatus;
	private int usersSeq;
	
	
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
	public int getTcode1() {
		return tcode1;
	}
	public void setTcode1(int tcode1) {
		this.tcode1 = tcode1;
	}
	public int getTcode2() {
		return tcode2;
	}
	public void setTcode2(int tcode2) {
		this.tcode2 = tcode2;
	}
	
		
}
