package com.com.point;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface PointService {
	//포인트 충전
	public int pointRecharge(PointVO vo);
	//포인트 환급
	public int pointRefund(PointVO vo);
	//포인트 내역조회
	public ArrayList<Map<String, Object>> pointSelect(Criteria cri);
	//포인트 첫번째 1000원충전
	public int point1000(int usersSeq);
	//포인트 체크(환급가능금액 체크용도)
	public PointVO pointCheck(int usersSeq);
	//회원 포인트 조회를 위한 총 rownum 수 구하는 메소드
	public int searchRownum(int usersSeq);
}
