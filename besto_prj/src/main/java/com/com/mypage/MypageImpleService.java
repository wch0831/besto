package com.com.mypage;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.MypageMapper;

@Service
public class MypageImpleService implements MypageService {

	@Autowired
	private MypageMapper mypageMapper;
	
	
	public ArrayList<MypageVO> buyhitList(int users_seq) {
		// TODO Auto-generated method stub
		return mypageMapper.buyhitselect(users_seq) ;
	}

	public HashMap buyAnalSysList(int users_seq) {
		HashMap map = new HashMap();
		map.put("KEY_N1", mypageMapper.buyanalselect1(users_seq));
		map.put("KEY_N2", mypageMapper.buyanalselect2(users_seq));
		
		double rate = ((Integer)map.get("KEY_N2"))/((Integer)map.get("KEY_N1"))*100;
		map.put("KEY_N3", rate);
		map.put("KEY_N4", mypageMapper.buyanalselect3(users_seq));
		
		return map;
	}
//
	
	public ArrayList<MypageVO> buyCartList(int users_seq) {
		// TODO Auto-generated method stub
		return mypageMapper.buycartselect(users_seq);
	}

	@Override
	public int buyCartdel(int cart_seq) {
		// TODO Auto-generated method stub
		return mypageMapper.buycartdel(cart_seq);
	}
	
	

}
