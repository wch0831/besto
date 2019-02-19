package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class GameController {
	
	@Autowired
	private GameService gameService;
	
	@RequestMapping(value="/gameCreate.do") //get방식
	public ModelAndView ctlAdminBoardSelect(GameVO vo) {
		ModelAndView mav = new ModelAndView();	
//		insert
		
//		ArrayList<BoardVO> brlist = boardService.svcAdminBoardList();
//		mav.addObject("KEY_BRLIST", brlist);
//		mav.setViewName("board/admin_board_list");
		return mav;
	}

}
