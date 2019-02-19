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
		return mav;
	}
//	@RequestMapping(value="board_open_window_history.do")
//	public ModelAndView ctlBuyNoteRecordRate(MatchVO vo) {		
//		ModelAndView mav=new ModelAndView();		
//		ArrayList<RecordRateVO> list=gameService.svcBuyNoteRecordRate(vo);
//		
//		return mav;
//	}
	
	@RequestMapping(value="board_game_buy.do")
	public ModelAndView ctlAvailableGame(){
		ModelAndView mav=new ModelAndView(); 
		ArrayList<GameVO> list =gameService.svcAvailableGame();	
		mav.addObject("ALIST", list);
		mav.setViewName("board_game_buy");		
		return mav;
	}
}
