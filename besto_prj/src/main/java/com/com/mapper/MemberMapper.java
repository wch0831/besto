package com.com.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.com.member.MemberVO;

@Mapper
public interface MemberMapper {
	
	public MemberVO login(MemberVO vo);
	public int memberRegister(MemberVO vo);
	public int findSeq(String uid);
	public MemberVO memberDetail(MemberVO vo);
	public int memberDelete(MemberVO vo);
	public int memberUpdate(MemberVO vo);
	public int changePassword(MemberVO vo);
	public String findId(String uemail);
}
