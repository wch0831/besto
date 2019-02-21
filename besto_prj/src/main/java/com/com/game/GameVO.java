package com.com.game;

import java.util.ArrayList;

public class GameVO {
	private int gameSeq;
	private String gameGubun;
	private String gameFinishdate;
	private String gameStatus;
	private int gameRoundseq;
	private String gameRegdate;
	private int usersSeq;
	
	private ArrayList<MatchVO> matchlist;
	
	public ArrayList<MatchVO> getMatchlist() {
		return matchlist;
	}
	public void setMatchlist(ArrayList<MatchVO> matchlist) {
		this.matchlist = matchlist;
	}
	public int getGameSeq() {
		return gameSeq;
	}
	public void setGameSeq(int gameSeq) {
		this.gameSeq = gameSeq;
	}
	public String getGameGubun() {
		return gameGubun;
	}
	public void setGameGubun(String gameGubun) {
		this.gameGubun = gameGubun;
	}
	public String getGameFinishdate() {
		return gameFinishdate;
	}
	public void setGameFinishdate(String gameFinishdate) {
		this.gameFinishdate = gameFinishdate;
	}
	public String getGameStatus() {
		return gameStatus;
	}
	public void setGameStatus(String gameStatus) {
		this.gameStatus = gameStatus;
	}
	public int getGameRoundseq() {
		return gameRoundseq;
	}
	public void setGameRoundseq(int gameRoundseq) {
		this.gameRoundseq = gameRoundseq;
	}
	public String getGameRegdate() {
		return gameRegdate;
	}
	public void setGameRegdate(String gameRegdate) {
		this.gameRegdate = gameRegdate;
	}
	public int getUsersSeq() {
		return usersSeq;
	}
	public void setUsersSeq(int usersSeq) {
		this.usersSeq = usersSeq;
	}
	
	
	
	
}
