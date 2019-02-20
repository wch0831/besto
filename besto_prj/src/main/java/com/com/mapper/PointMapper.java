package com.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.com.point.PointVO;

@Mapper
public interface PointMapper {
	public int pointRecharge(PointVO vo);
	public int pointRefund(PointVO vo);
	public ArrayList<PointVO> pointSelectOne(int usersSeq);
}
