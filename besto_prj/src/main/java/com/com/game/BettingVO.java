package com.com.game;

public class BettingVO {
	private int BettingSeq;
	private String bettingContent;
	private int bettingPrice;
	private String bettingRegdate;
	private String bettingHityn;
	private float bettingHitrate;
	private int gameSeq;
	private int usersSeq;
	
	public int getBettingSeq() {
		return BettingSeq;
	}
	public void setBettingSeq(int bettingSeq) {
		BettingSeq = bettingSeq;
	}
	public String getBettingContent() {
		return bettingContent;
	}
	public void setBettingContent(String bettingContent) {
		this.bettingContent = bettingContent;
	}
	public int getBettingPrice() {
		return bettingPrice;
	}
	public void setBettingPrice(int bettingPrice) {
		this.bettingPrice = bettingPrice;
	}
	public String getBettingRegdate() {
		return bettingRegdate;
	}
	public void setBettingRegdate(String bettingRegdate) {
		this.bettingRegdate = bettingRegdate;
	}
	public String getBettingHityn() {
		return bettingHityn;
	}
	public void setBettingHityn(String bettingHityn) {
		this.bettingHityn = bettingHityn;
	}
	public float getBettingHitrate() {
		return bettingHitrate;
	}
	public void setBettingHitrate(float bettingHitrate) {
		this.bettingHitrate = bettingHitrate;
	}
	public int getGameSeq() {
		return gameSeq;
	}
	public void setGameSeq(int gameSeq) {
		this.gameSeq = gameSeq;
	}
	public int getUsersSeq() {
		return usersSeq;
	}
	public void setUsersSeq(int usersSeq) {
		this.usersSeq = usersSeq;
	}
}
