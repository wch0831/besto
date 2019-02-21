package com.com.mypage;

import java.util.ArrayList;

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

	public ArrayList<Object> buyAnalSysList(int users_seq) {
		ArrayList<Object> list = new ArrayList();
		list.add(mypageMapper.buyanalselect1(users_seq));
		list.add(mypageMapper.buyanalselect2(users_seq));
		
		double rate = ((Integer)list.get(1))/((Integer)list.get(0))*100;
		list.add(rate);
		
		list.add(mypageMapper.buyanalselect3(users_seq));
		
		return list;
	}
//
	
	public ArrayList<MypageVO> buyCartList() {
		// TODO Auto-generated method stub
		return mypageMapper.buycartselect();
	}
	
	

}
