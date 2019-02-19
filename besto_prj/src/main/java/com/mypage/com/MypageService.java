package com.mypage.com;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface MypageService {

	
	// 구매적중 내역 
	public ArrayList<MypageVO> buyhitList();
	
}
