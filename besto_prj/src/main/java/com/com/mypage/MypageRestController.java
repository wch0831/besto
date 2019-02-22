package com.com.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MypageRestController {
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping(value="/member_buy_score.do", method = RequestMethod.POST)
	public ModelAndView viewBuyHitList(HttpServletRequest request) {
		System.out.println("============================ddd=====");
		HttpSession session = request.getSession();
		String strSeq = session.getAttribute("SESS_SEQ").toString();
		int seq = Integer.parseInt(strSeq);
		
		 ModelAndView mav = new ModelAndView();

		 ArrayList<MypageVO> mylist = mypageService.buyhitList(seq);
		
		 mav.addObject("KEY_BUYLIST", mylist);
		 mav.setViewName("member_buy_score");
		
		 return mav;
	}
	

}
