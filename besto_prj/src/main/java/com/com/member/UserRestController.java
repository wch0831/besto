package com.com.member;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserRestController {

	@Resource
	private UserService userService;
	
	@RequestMapping(value = "/finduid.do", method = RequestMethod.GET)
	@ResponseBody
	public String findid(MemberVO mvo) {
		String uid = null;
		try {
			uid = userService.findId(mvo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return uid;
	}
	
	@RequestMapping(value = "/findupw.do", method = RequestMethod.GET)
	@ResponseBody
	public String findpw(MemberVO mvo) {
		RandomPw rpw = new RandomPw();
		String upw = rpw.newpw();
		try {
			mvo.setUsersPw(upw);
			int res = userService.changePassword(mvo);
			if(res==0) {
				upw = "";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return upw;
	}
}
