package com.com.mypage;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.com.mapper.MypageMapper;

public class MypageImpleService implements MypageService {

	@Autowired
	private MypageMapper mypageMapper;
	
	@Override
	public ArrayList<MypageVO> buyhitList() {
		// TODO Auto-generated method stub
		return mypageMapper.buyhitselect() ;
	}

	@Override
	public ArrayList<MypageVO> buyAnalSysList() {
		// TODO Auto-generated method stub
		return mypageMapper.buyanalselect();
	}

	@Override
	public ArrayList<MypageVO> buyCartList() {
		// TODO Auto-generated method stub
		return mypageMapper.buycartselect();
	}
	
	

}
