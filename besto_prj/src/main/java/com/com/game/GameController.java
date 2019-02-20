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
	
	//game �깮�꽦 insert
	@RequestMapping(value="/gameCreate.do") //get諛⑹떇
	public String gameinsert(GameVO vo) {
		if(vo.getGameSeq() != 0) {
			int res = gameService.svcGameInsert(vo);
			if(res != 0) {
				
			}
		} else {
			System.out.println("아핳");
		}
		return "index";
	}
	
	
	

}
