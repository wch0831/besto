package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class NoticeController {
	
	@Autowired NoticeService notis;
	
	
	//
	@RequestMapping(value="/board_protice.do")
	public ModelAndView ctlNoticeSelect() {
		ModelAndView mav = new ModelAndView();
		ArrayList<NoticeVO> notilist = notis.NoticeList();
		System.out.println("1");
		System.out.println(notilist.get(1).getNoticeSeq());
		System.out.println("2");
		mav.addObject("KEY_NOTICE", notilist);
		mav.setViewName("board_protice");
		return mav;
	}
	
/*	@RequestMapping(value="/notice_insert.do")
	public String ctlBoardInsert(int point) {
		notis.(point);
		//return "admin_board_list";
		//수행이 끝난 후에 alist로 다시 가라.....
		return "redirect:/alist.do";
			// "forward:/alist"; 도 사용가능
		
	}*/

	
	
/*	@RequestMapping(value="/board_protice" , method = RequestMethod.GET)
	public ModelAndView ctlNoticeCountUpdate() {
		ModelAndView mav = new ModelAndView();
		ArrayList<NoticeVO> notilist = notis.NoticeList();
		System.out.println(notilist.get(0).getNoticeHits());
		
		mav.addObject("KEY_NOTICE", notilist);
		mav.setViewName("board_protice");
		return mav;
	}*/
	

}
