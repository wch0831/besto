package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.mypage.MypageVO;

@Mapper
public interface MypageMapper {

		public ArrayList<MypageVO> buyhitselect();
		
		public int buyanalselect1(int users_seq);
		public int buyanalselect2(int users_seq);
		public int buyanalselect3(int users_seq);
		
		

		public ArrayList<MypageVO> buycartselect();
		
}
