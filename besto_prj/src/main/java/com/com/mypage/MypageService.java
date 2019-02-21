package com.com.mypage;

import java.util.ArrayList;

import org.springframework.stereotype.Service;


public interface MypageService {

	
	// 구매적중 내역 
	public ArrayList<MypageVO> buyhitList(int users_seq);
	
	//구매현황
	
	public ArrayList<Object> buyAnalSysList(int users_seq);
//	
//	//쇼핑카트
//	
	public ArrayList<MypageVO> buyCartList();
}
