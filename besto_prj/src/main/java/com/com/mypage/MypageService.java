package com.com.mypage;

import java.util.ArrayList;

import org.springframework.stereotype.Service;


public interface MypageService {

	
	// �������� ���� 
	public ArrayList<MypageVO> buyhitList(int users_seq);
	
	//������Ȳ
	
	public ArrayList<Object> buyAnalSysList(int users_seq);
//	
//	//����īƮ
//	
	public ArrayList<MypageVO> buyCartList();
}
