package com.com.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.com.point.Criteria;
import com.com.point.PointVO;

@Mapper
public interface PointMapper {
	public int pointRecharge(PointVO vo);
	public int pointRefund(PointVO vo);
	public ArrayList<Map<String, Object>> pointSelectOne(Criteria cri);
	public int point1000(int usersSeq);
	public PointVO pointCheck(int usersSeq);
	public int searchRownum(int usersSeq);
}
