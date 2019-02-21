package com.com.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class MypageController {

		@Autowired
		private MypageService mypageService;
		
		@RequestMapping(value="/buyhitlist.do", method = RequestMethod.POST)
		@ResponseBody	
		public ModelAndView viewBuyHitList(HttpServletRequest request) {
			
			HttpSession session = request.getSession();
			int seq = (Integer)session.getAttribute("SESS_SEQ");
			
			 ModelAndView mav = new ModelAndView();
			 
			 ArrayList<MypageVO> mylist = mypageService.buyhitList(seq);
			
			 mav.addObject("KEY_BUYLIST", mylist);
			 mav.setViewName("member_buy_score");
			
			
			 return mav;
		}
		
		
		
		
		
		@RequestMapping(value="/buyanalsys", method = RequestMethod.POST)
		
		public ModelAndView viewbuyAnalsys(HttpServletRequest request) {
			
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession();
			int seq = (Integer)session.getAttribute("SESS_SEQ");
			 ArrayList<Object> mylist = mypageService.buyAnalSysList(seq);
			 
			 
			 
			 mav.addObject("KEY_BUYLIST", mylist);
			 mav.setViewName("member_buy_info");
			 
			
			return mav;
			
		}
	
		@RequestMapping(value="/buycart", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView viewbuyCart() {
			
			ModelAndView mav = new ModelAndView();
			
			 ArrayList<MypageVO> mylist = mypageService.buyCartList();
				
			 mav.addObject("KEY_BUYLIST", mylist);
			 mav.setViewName("member_cart");
			 
			
			return mav;
			
		}
}
