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
		// TODO Auto-generated method stub
		return null;
	}

	public void memberRegister(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public MemberVO memberDetail(String uid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public void memberDelete(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void memberUpdate(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void changePassword(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public String findId(String uemail) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
