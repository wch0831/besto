package com.com.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.com.member.MemberVO;
import com.com.mapper.MemberMapper;
import com.com.mapper.PointMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private MemberMapper mMapper;
	@Autowired
	private PointMapper pMapper;
	
	public MemberVO login(MemberVO vo) throws Exception {
		vo = mMapper.login(vo);
		return vo;
	}

	public String checkId(String uid) throws Exception {
		if(mMapper.checkId(uid) > 0) {
			uid = "";
		}
		return uid;
	}

	public int memberRegister(MemberVO vo) throws Exception {
		int res = mMapper.memberRegister(vo);
		if(res>0) {
			int firstSeq = mMapper.findSeq(vo.getUsersId());
			pMapper.point1000(firstSeq);
		}
		return res;		
	}

	public MemberVO memberDetail(MemberVO vo) throws Exception {
		return mMapper.memberDetail(vo);
	}

	public int memberDelete(MemberVO vo) throws Exception {
		return mMapper.memberDelete(vo);
	}

	public int memberUpdate(MemberVO vo) throws Exception {
		return mMapper.memberUpdate(vo);
	}

	public int changePassword(MemberVO vo) throws Exception {
		return mMapper.changePassword(vo);
	}

	public String findId(String uemail) throws Exception {
		return mMapper.findId(uemail);
	}


}
