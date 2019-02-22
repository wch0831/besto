package com.com.member;

import com.com.member.MemberVO;

public interface UserService {
	public MemberVO login(MemberVO vo) throws Exception;
	public String checkId(String uid) throws Exception;
	public int memberRegister(MemberVO vo) throws Exception;
	public MemberVO memberDetail(MemberVO vo) throws Exception;
	public int memberDelete(MemberVO vo) throws Exception;
	public int memberUpdate(MemberVO vo) throws Exception;
	public int changePassword(MemberVO vo) throws Exception;
	public String findId(MemberVO vo) throws Exception;
}
