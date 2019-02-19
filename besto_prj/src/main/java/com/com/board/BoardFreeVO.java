package com.com.board;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class BoardFreeVO {
	
	private int postSeq;
	private String boardCode;
	private int userSeq;
	private String freeBoardTitle;
	private String freeBoardContent;
	private String freeBoardRegdate;
	private int freeBoardHits;
	private String freeBoardDel;
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
	public int getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}
	public String getFreeBoardTitle() {
		return freeBoardTitle;
	}
	public void setFreeBoardTitle(String freeBoardTitle) {
		this.freeBoardTitle = freeBoardTitle;
	}
	public String getFreeBoardContent() {
		return freeBoardContent;
	}
	public void setFreeBoardContent(String freeBoardContent) {
		this.freeBoardContent = freeBoardContent;
	}
	public String getFreeBoardRegdate() {
		return freeBoardRegdate;
	}
	public void setFreeBoardRegdate(String freeBoardRegdate) {
		this.freeBoardRegdate = freeBoardRegdate;
	}
	public int getFreeBoardHits() {
		return freeBoardHits;
	}
	public void setFreeBoardHits(int freeBoardHits) {
		this.freeBoardHits = freeBoardHits;
	}
	public String getFreeBoardDel() {
		return freeBoardDel;
	}
	public void setFreeBoardDel(String freeBoardDel) {
		this.freeBoardDel = freeBoardDel;
	}

}
