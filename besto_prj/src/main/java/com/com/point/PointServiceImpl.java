package com.com.point;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.com.mapper.PointMapper;

@Service
public class PointServiceImpl implements PointService{
	
	@Autowired
	private PointMapper pointMapper;

	
	public int pointRecharge(PointVO vo) {
		return pointMapper.pointRecharge(vo);
	}

	
	public int pointRefund(PointVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public ArrayList<PointVO> pointSelect(int usersSeq) {
		// TODO Auto-generated method stub
		return pointMapper.pointSelectOne(usersSeq);
	}
	
	
	
}
