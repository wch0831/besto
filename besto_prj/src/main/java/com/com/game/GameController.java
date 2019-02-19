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
	
	//game 생성 insert
	@RequestMapping(value="/gameCreate.do") //get방식
	public String gameinsert(GameVO vo) {
		int res = gameService.svcGameInsert(vo);
		return "index";
	}
	
	
	

}
