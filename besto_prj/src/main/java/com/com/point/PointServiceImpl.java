package com.com.point;

import java.util.ArrayList;
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

	
	public ArrayList<PointVO> pointSelect(int usersSeq) {
		// TODO Auto-generated method stub
		return mapper.pointSelectOne(usersSeq);
	}


	@Override
	public int point1000(int usersSeq) {
		// TODO Auto-generated method stub
		return mapper.point1000(usersSeq);
	}
	
	
	
}
