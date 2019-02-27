package com.com.game;

public class MatchResultVO {
	private int matchSeq;
	private String matchScore;
	private String matchVs;
	private String registerYn;
	
	public int getMatchSeq() {
		return matchSeq;
	}
	public void setMatchSeq(int matchSeq) {
		this.matchSeq = matchSeq;
	}
	public String getMatchScore() {
		return matchScore;
	}
	public void setMatchScore(String matchScore) {
		this.matchScore = matchScore;
	}
	public String getMatchVs() {
		return matchVs;
	}
	public void setMatchVs(String matchVs) {
		this.matchVs = matchVs;
	}
	public String getRegisterYn() {
		return registerYn;
	}
	public void setRegisterYn(String registerYn) {
		this.registerYn = registerYn;
	}
}
