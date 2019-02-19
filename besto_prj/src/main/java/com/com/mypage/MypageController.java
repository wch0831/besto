package com.com.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {

		@Autowired
		private MypageService mypageService;
		
		@RequestMapping(value="/buyhitlist")
		public ModelAndView viewBuyHitList() {
			
			 ModelAndView mav = new ModelAndView();
			 
			 ArrayList<MypageVO> mylist = mypageService.buyhitList();
			
			 mav.addObject("KEY_BUYLIST", mylist);
			 mav.setViewName("board_game_hit_result");
			 
			 return mav;
			
		}
		
		@RequestMapping(value="/buyanalsys")
		public ModelAndView viewbuyAnalsys(HttpServletRequest request) {
			
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession();
			int seq = (Integer)session.getAttribute("SESS_SEQ");
			 ArrayList<Object> mylist = mypageService.buyAnalSysList(seq);
			 
			 
			 
			 mav.addObject("KEY_BUYLIST", mylist);
			 mav.setViewName("board_game_hit_result");
			 
			
			return mav;
			
		}
//		
//		@RequestMapping(value="/buycart")
//		public ModelAndView viewbuyCart() {
//			
//			ModelAndView mav = new ModelAndView();
//			
//			 ArrayList<MypageVO> mylist = mypageService.buyCartList();
//				
//			 mav.addObject("KEY_BUYLIST", mylist);
//			 mav.setViewName("board_game_hit_result");
//			 
//			
//			return mav;
//			
//		}
}
