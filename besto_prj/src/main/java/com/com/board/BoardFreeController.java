package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BoardFreeController {
	
	@Autowired BoardFreeService bs;
	
	@RequestMapping(value="/board_free" , method = RequestMethod.GET)
	public ModelAndView ctlAdminBoardSelect() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardFreeVO> brlist = bs.BoardList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free");
		return mav;
	}
	
	@RequestMapping(value="/free_board_detail?postseq={postSeq}", method = RequestMethod.GET)
	public ModelAndView ctlBoardDetail(

			@PathVariable(value="postSeq") int postSeq

			) {
			System.out.println(postSeq);
	
			BoardFreeVO bvo = bs.bordfreedetail(postSeq);
			ModelAndView mav = new ModelAndView();
			mav.addObject("KEY_BVO",bvo);
			mav.setViewName("board_free_detail");
		
			return mav;
	}
	
}
