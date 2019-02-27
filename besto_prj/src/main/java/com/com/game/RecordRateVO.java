package com.com.game;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestBody;

public class RecordRateVO {
	
	//---------------------------------------------------------------
	//board_open_window_history.jsp 기록식 게임 체크박스 체크 시 구매내역확인 자동완성을 위한 프로퍼티
	//@Controller gameInsert(@RequestBody ArrayList<RecordRateVO> list)에 사용
	private String matchSeqList;
	private String scoreList;
	private String recoderateList;
	private String inputCashList;
	private int gameSeq;
	private int usersSeq;
	private String passWord;
	
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
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
	public String getMatchSeqList() {
		return matchSeqList;
	}
	public void setMatchSeqList(String matchSeqList) {
		this.matchSeqList = matchSeqList;
	}
	public String getScoreList() {
		return scoreList;
	}
	public void setScoreList(String scoreList) {
		this.scoreList = scoreList;
	}
	public String getRecoderateList() {
		return recoderateList;
	}
	public void setRecoderateList(String recoderateList) {
		this.recoderateList = recoderateList;
	}
	public String getInputCashList() {
		return inputCashList;
	}
	public void setInputCashList(String inputCashList) {
		this.inputCashList = inputCashList;
	}
	//---------------------------------------------------------------
	
	
	
	private int matchSeq;
	private float recoderate00;
	private float recoderate10;
	private float recoderate20;
	private float recoderate11;
	private float recoderate22;
	private float recoderate01;
	private float recoderate02;
	public int getMatchSeq() {
		return matchSeq;
	}
	public void setMatchSeq(int matchSeq) {
		this.matchSeq = matchSeq;
	}
	public float getRecoderate00() {
		return recoderate00;
	}
	public void setRecoderate00(float recoderate00) {
		this.recoderate00 = recoderate00;
	}
	public float getRecoderate10() {
		return recoderate10;
	}
	public void setRecoderate10(float recoderate10) {
		this.recoderate10 = recoderate10;
	}
	public float getRecoderate20() {
		return recoderate20;
	}
	public void setRecoderate20(float recoderate20) {
		this.recoderate20 = recoderate20;
	}
	public float getRecoderate11() {
		return recoderate11;
	}
	public void setRecoderate11(float recoderate11) {
		this.recoderate11 = recoderate11;
	}
	public float getRecoderate22() {
		return recoderate22;
	}
	public void setRecoderate22(float recoderate22) {
		this.recoderate22 = recoderate22;
	}
	public float getRecoderate01() {
		return recoderate01;
	}
	public void setRecoderate01(float recoderate01) {
		this.recoderate01 = recoderate01;
	}
	public float getRecoderate02() {
		return recoderate02;
	}
	public void setRecoderate02(float recoderate02) {
		this.recoderate02 = recoderate02;
	}
		
	
}
