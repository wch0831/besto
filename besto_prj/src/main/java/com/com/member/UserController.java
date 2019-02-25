package com.com.member;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.com.member.MemberVO;
import com.com.member.UserService;

@Controller
public class UserController {

	@Resource
	private UserService userService;
	
//	@Autowired
//	private MemberVO mvo;
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView login(HttpServletRequest request, MemberVO mvo) {
		ModelAndView mav = new ModelAndView();
		try {
			mvo = userService.login(mvo);
			if(mvo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("SESS_SEQ", mvo.getUsersSeq());
				session.setAttribute("SESS_ID", mvo.getUsersId());
				session.setAttribute("SESS_NAME", mvo.getUsersName());
				session.setAttribute("SESS_GRANT", mvo.getUsersGrant());
				mav.setViewName("index");
			} else {
				mav.setViewName("board_protice_find");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping(value = "/jbcheck.do", method = RequestMethod.GET)
	@ResponseBody
	public void idCheck(HttpServletRequest request, HttpServletResponse response) {
		try {
			String uid = request.getParameter("uid");
			uid = userService.checkId(uid);
			PrintWriter out = response.getWriter();
			out.println(uid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/regid.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView registUser(MemberVO mvo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mvo.getUsersName());
		try {
			int res = userService.memberRegister(mvo);
			if(res > 0) {
				mav.setViewName("index");
			} else {
				mav.setViewName("member_register");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value = "/Passwordhg.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView checkPw(HttpServletRequest request, MemberVO mvo, @RequestParam(value="checkm")String mode) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mvo.getUsersPw() + mode);
		HttpSession session = request.getSession();
		mvo.setUsersId(session.getAttribute("SESS_ID").toString());
		try {
			if(mode.equals("1")) {
				mvo = userService.memberDetail(mvo);
				if(mvo != null) {
					mav.addObject("MDETAIL" , mvo);
					mav.setViewName("member_update");
				}else {
					mav.setViewName("member_info");
				}
			}else if(mode.equals("2")) {
				int res = userService.memberDelete(mvo);
				if(res>0) {
					session.invalidate();
					mav.setViewName("index");
				}else {
					mav.setViewName("member_drop");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value = "/updateuinfo.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView updateUser(MemberVO mvo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mvo.getUsersName());
		try {
			int res = userService.memberUpdate(mvo);
			if(res > 0) {
				mav.setViewName("index");
			} else {
				mav.addObject("MDETAIL" , mvo);
				mav.setViewName("member_update");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value = "/finduinfo.do", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView findUser(MemberVO mvo, @RequestParam(value="checkm")String mode) {
		ModelAndView mav = new ModelAndView();
		try {
			if(mode.equals("1")) {
				String uid = userService.findId(mvo);
				if(uid != null) {
					
				}else {
					
				}
			}else if(mode.endsWith("2")) {
				int res = userService.changePassword(mvo);				
				if(res > 0) {
					mav.setViewName("index");
				} else {
					mav.addObject("MDETAIL" , mvo);
					mav.setViewName("member_update");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
}
