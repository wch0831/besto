package com.com.mypage;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface MypageService {

	
	// �������� ���� 
	public ArrayList<MypageVO> buyhitList();
	
	//������Ȳ
	
	public ArrayList<MypageVO> buyAnalSysList();
	
	//����īƮ
	
	public ArrayList<MypageVO> buyCartList();
}
