package com.com.point;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.com.mapper.PointMapper;

@Service
public class PointServiceImpl implements PointService{
	
	@Autowired
	private PointMapper mapper;

	
	public int pointRecharge(PointVO vo) {
		return mapper.pointRecharge(vo);
	}

	
	public int pointRefund(PointVO vo) {
		// TODO Auto-generated method stub
		return mapper.pointRefund(vo);
	}

	
	public ArrayList<Map<String, Object>> pointSelect(Criteria cri) {
		return mapper.pointSelectOne(cri);
	}



	public int point1000(int usersSeq) {
		// TODO Auto-generated method stub
		return mapper.point1000(usersSeq);
	}



	public PointVO pointCheck(int usersSeq) {
		// TODO Auto-generated method stub
		return mapper.pointCheck(usersSeq);
	}

	public int searchRownum(int usersSeq) {
		// TODO Auto-generated method stub
		return mapper.searchRownum(usersSeq);
	}
	
	
}
