package com.com.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
=======
import org.springframework.web.bind.annotation.ModelAttribute;
>>>>>>> branch 'master' of https://github.com/wch0831/besto
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
<<<<<<< HEAD
		
		
		
=======
		try {
			mvo = userService.login(mvo);
			if(!mvo.getUsersName().equals("")) {
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
>>>>>>> branch 'master' of https://github.com/wch0831/besto
		return mav;
	}
}
