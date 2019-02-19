package com.com.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.com.member.MemberVO;
import com.com.mapper.MemberMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private MemberMapper mapper;
	
	public MemberVO login(MemberVO vo) throws Exception {
		vo = mapper.login(vo);
		return vo;
	}

	public int memberRegister(MemberVO vo) throws Exception {
		return mapper.memberRegister(vo);		
	}

	public MemberVO memberDetail(String uid) throws Exception {
		return mapper.memberDetail(uid);
	}

	public int memberDelete(MemberVO vo) throws Exception {
		return mapper.memberDelete(vo);
	}

	public int memberUpdate(MemberVO vo) throws Exception {
		return mapper.memberUpdate(vo);
	}

	public int changePassword(MemberVO vo) throws Exception {
		return mapper.changePassword(vo);
	}

	public String findId(String uemail) throws Exception {
		return mapper.findId(uemail);
	}

}
