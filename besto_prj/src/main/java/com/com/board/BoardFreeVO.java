package com.com.board;

import java.util.ArrayList;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


@Component
@Scope("prototype")
public class BoardFreeVO {
	
	private int postSeq;
	private String boardCode;
	private int usersSeq;
	private String freeBoardTitle;
	private String freeBoardContent;
	private String freeBoardRegdate;
	private int freeBoardHits;
	private String freeBoardDel;
	private String usersName;
	private int flist;
	
	private ArrayList<ReplyVO> rlist;
		
	public ArrayList<ReplyVO> getRlist() {
		return rlist;
	}
	public void setRlist(ArrayList<ReplyVO> rlist) {
		this.rlist = rlist;
	}
	public int getFlist() {
		return flist;
	}
	public void setFlist(int flist) {
		this.flist = flist;
	}
	/*public int getFrnum() {
		return frnum;
	}
	public void setFrnum(int frnum) {
		this.frnum = frnum;
	}*/
	public String getUsersName() {
		return usersName;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
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
	public void setUsersSeq(int userSeq) {
		this.usersSeq = userSeq;
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
