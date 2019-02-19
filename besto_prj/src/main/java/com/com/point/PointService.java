package com.com.point;

import java.util.ArrayList;

public interface PointService {
	//포인트 충전
	public int pointRecharge(PointVO vo);
	//포인트 환급
	public int pointRefund(PointVO vo);
	//포인트 내역조회
	public ArrayList<PointVO> pointSelect(int usersSeq);
	//포인트 첫번째 1000원충전
	public int point1000(int usersSeq);
}
