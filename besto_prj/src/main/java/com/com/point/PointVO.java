package com.com.point;

import org.springframework.beans.factory.annotation.Autowired;

public class PointVO {
	private int point_seq;
	private int point_change;
	private int point_current;	
	private String point_gubun;
	private String point_regdate;
	private int users_seq;
	private int refund_seq;
	
	public int getPoint_seq() {
		return point_seq;
	}
	public void setPoint_seq(int point_seq) {
		this.point_seq = point_seq;
	}
	public int getPoint_change() {
		return point_change;
	}
	public void setPoint_change(int point_change) {
		this.point_change = point_change;
	}
	public int getPoint_current() {
		return point_current;
	}
	public void setPoint_current(int point_current) {
		this.point_current = point_current;
	}
	public String getPoint_gubun() {
		return point_gubun;
	}
	public void setPoint_gubun(String point_gubun) {
		this.point_gubun = point_gubun;
	}
	public String getPoint_regdate() {
		return point_regdate;
	}
	public void setPoint_regdate(String point_regdate) {
		this.point_regdate = point_regdate;
	}
	public int getUsers_seq() {
		return users_seq;
	}
	public void setUsers_seq(int users_seq) {
		this.users_seq = users_seq;
	}
	public int getRefund_seq() {
		return refund_seq;
	}
	public void setRefund_seq(int refund_seq) {
		this.refund_seq = refund_seq;
	}
	
}
