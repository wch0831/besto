package com.com.mypage;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface MypageService {

	
	// 구매적중 내역 
	public ArrayList<MypageVO> buyhitList();
	
	//구매현황
	
	public ArrayList<MypageVO> buyAnalSysList();
	
	//쇼핑카트
	
	public ArrayList<MypageVO> buyCartList();
}
