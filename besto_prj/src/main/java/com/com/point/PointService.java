package com.com.point;

import java.util.ArrayList;

public interface PointService {
	//포인트 충전
	public int pointRecharge() throws Exception;
	//포인트 환급
	public int pointRefund() throws Exception;
	//포인트 내역조회
	public ArrayList<PointVO> pointSelect() throws Exception;
}
