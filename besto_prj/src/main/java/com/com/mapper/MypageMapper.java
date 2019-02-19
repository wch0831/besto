package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mypage.com.MypageVO;

@Mapper
public interface MypageMapper {

		public ArrayList<MypageVO> buyhitselect();
		
}
