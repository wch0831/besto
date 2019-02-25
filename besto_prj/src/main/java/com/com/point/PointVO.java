package com.com.point;

import org.springframework.beans.factory.annotation.Autowired;

public class PointVO {
	private int pointSeq;
	private int pointChange;
	private int pointCurrent;	
	private String pointGubun;
	private String pointRegdate;
	private int usersSeq;
	private int refundSeq;
	public int getPointSeq() {
		return pointSeq;
	}
	public void setPointSeq(int pointSeq) {
		this.pointSeq = pointSeq;
	}
	public int getPointChange() {
		return pointChange;
	}
	public void setPointChange(int pointChange) {
		this.pointChange = pointChange;
	}
	public int getPointCurrent() {
		return pointCurrent;
	}
	public void setPointCurrent(int pointCurrent) {
		this.pointCurrent = pointCurrent;
	}
	public String getPointGubun() {
		return pointGubun;
	}
	public void setPointGubun(String pointGubun) {
		this.pointGubun = pointGubun;
	}
	public String getPointRegdate() {
		return pointRegdate;
	}
	public void setPointRegdate(String pointRegdate) {
		this.pointRegdate = pointRegdate;
	}
	public int getUsersSeq() {
		return usersSeq;
	}
	public void setUsersSeq(int usersSeq) {
		this.usersSeq = usersSeq;
	}
	public int getRefundSeq() {
		return refundSeq;
	}
	public void setRefundSeq(int refundSeq) {
		this.refundSeq = refundSeq;
	}
	
	 
}
