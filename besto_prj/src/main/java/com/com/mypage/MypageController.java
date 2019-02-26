package com.com.mypage;

import java.util.ArrayList;
import java.util.HashMap;

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

import com.google.gson.Gson;

@Controller
public class MypageController {

		@Autowired
		private MypageService mypageService;
		
		@RequestMapping(value="/buyhitlist.do", method = RequestMethod.GET)
		@ResponseBody	
		public ModelAndView viewBuyHitList(HttpServletRequest request) {
			System.out.println("============================ddd=====");
			HttpSession session = request.getSession();
			int seq = (Integer)session.getAttribute("SESS_SEQ");
			
			 ModelAndView mav = new ModelAndView();

			 ArrayList<MypageVO> mylist = mypageService.buyhitList(seq);
			
			 mav.addObject("KEY_BUYLIST", mylist);
			 mav.setViewName("member_buy_score");
			
			
			 return mav;
		}
		
		
		
		
		
		@RequestMapping(value="/buyanalsys.do", method = RequestMethod.GET)
		
		public ModelAndView viewbuyAnalsys(HttpServletRequest request) {
			
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession();
			int seq = (Integer)session.getAttribute("SESS_SEQ");
			 HashMap map = mypageService.buyAnalSysList(seq);
			 
			 
			 System.out.println(map.get("KEY_N1"));
			 
			 
			 mav.addObject("KEY_YLIST", map);
			 mav.setViewName("member_buy_info");
			 
			
			return mav;
			
		}
	
		
		
		
		@RequestMapping(value="/buycart.do", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView viewbuyCart(HttpServletRequest request) {
			
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession();
			int seq = (Integer)session.getAttribute("SESS_SEQ");

			 ArrayList<MypageVO> mylist = mypageService.buyCartList(seq);
				
			 mav.addObject("KEY_CART", mylist);
			 mav.setViewName("member_cart");
			
			return mav;
			
		}
		
		@RequestMapping(value="/cartdel.do", method = RequestMethod.GET)
		@ResponseBody
		public ArrayList<MypageVO> viewbuyCartDel(HttpServletRequest request, @RequestParam(value="cartseq") String cart_seq) {
			
			//삭제하기
			mypageService.buyCartdel(Integer.parseInt(cart_seq));
			//다시뽑기
			HttpSession session = request.getSession();
			int seq = (Integer)session.getAttribute("SESS_SEQ");

			 ArrayList<MypageVO> mylist = mypageService.buyCartList(seq);
			
			return mylist;
			
		}
}
