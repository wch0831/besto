package com.com.mypage;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Service;


public interface MypageService {

	
	// �������� ���� 
	public ArrayList<MypageVO> buyhitList(int users_seq);
	
	//������Ȳ
	
	public HashMap buyAnalSysList(int users_seq);
//	
//	//����īƮ
//	
	public ArrayList<MypageVO> buyCartList(int users_seq);
	
	public int buyCartdel(int cart_seq);
}
