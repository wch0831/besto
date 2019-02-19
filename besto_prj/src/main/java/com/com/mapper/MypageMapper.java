package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.mypage.MypageVO;

@Mapper
public interface MypageMapper {

		public ArrayList<MypageVO> buyhitselect();
		
		public ArrayList<MypageVO> buyanalselect();
		
		public ArrayList<MypageVO> buycartselect();
		
}
