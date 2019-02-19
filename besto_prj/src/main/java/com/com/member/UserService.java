package com.com.member;

import com.com.member.MemberVO;

public interface UserService {
	public MemberVO login(MemberVO vo) throws Exception;
	public void memberRegister(MemberVO vo) throws Exception;
	public MemberVO memberDetail(String uid) throws Exception;
	public void memberDelete(MemberVO vo) throws Exception;
	public void memberUpdate(MemberVO vo) throws Exception;
	public void changePassword(MemberVO vo) throws Exception;
	public String findId(String uemail) throws Exception;
}
