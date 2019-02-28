package com.com.board;

public class BoardHitHistoryVO {
	
	private String usersName;
	
	private int hlist;
	
	public int getHlist() {
		return hlist;
	}
	public void setHlist(int hlist) {
		this.hlist = hlist;
	}
	public String getUsersName() {
		return usersName;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
	private int postSeq;
	public int getPostSeq() {
		return postSeq;
	}
	public void setPostSeq(int postSeq) {
		this.postSeq = postSeq;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public int getUsersSeq() {
		return usersSeq;
	}
	public void setUsersSeq(int usersSeq) {
		this.usersSeq = usersSeq;
	}
	public String getHithistoryDiscussionGcode() {
		return hithistoryDiscussionGcode;
	}
	public void setHithistoryDiscussionGcode(String hithistoryDiscussionGcode) {
		this.hithistoryDiscussionGcode = hithistoryDiscussionGcode;
	}
	public int getHithistoryDiscussionRoundseq() {
		return hithistoryDiscussionRoundseq;
	}
	public void setHithistoryDiscussionRoundseq(int hithistoryDiscussionRoundseq) {
		this.hithistoryDiscussionRoundseq = hithistoryDiscussionRoundseq;
	}
	public String getHithistoryDiscussionTitle() {
		return hithistoryDiscussionTitle;
	}
	public void setHithistoryDiscussionTitle(String hithistoryDiscussionTitle) {
		this.hithistoryDiscussionTitle = hithistoryDiscussionTitle;
	}
	public String getHithistoryDiscussionRegdate() {
		return hithistoryDiscussionRegdate;
	}
	public void setHithistoryDiscussionRegdate(String hithistoryDiscussionRegdate) {
		this.hithistoryDiscussionRegdate = hithistoryDiscussionRegdate;
	}
	public int getHithistoryDiscussionHits() {
		return hithistoryDiscussionHits;
	}
	public void setHithistoryDiscussionHits(int hithistoryDiscussionHits) {
		this.hithistoryDiscussionHits = hithistoryDiscussionHits;
	}
	public String getHithistoryDiscussionContent() {
		return hithistoryDiscussionContent;
	}
	public void setHithistoryDiscussionContent(String hithistoryDiscussionContent) {
		this.hithistoryDiscussionContent = hithistoryDiscussionContent;
	}
	private String boardCode;
	private int usersSeq;
	private String hithistoryDiscussionGcode;
	private int hithistoryDiscussionRoundseq;
	private String hithistoryDiscussionTitle;
	private String hithistoryDiscussionRegdate;
	private int hithistoryDiscussionHits;
	private String hithistoryDiscussionContent;
	

}
