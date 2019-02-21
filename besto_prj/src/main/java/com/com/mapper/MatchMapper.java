package com.com.mapper;


import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.game.MatchVO;
import com.com.member.MemberVO;

@Mapper
public interface MatchMapper {
	public ArrayList<MatchVO> todayMatchList();
	public ArrayList<MatchVO> matchList();
	public ArrayList<MatchVO> kaeruList(MatchVO mvo);
}
