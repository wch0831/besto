package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;

@RestController
public class GameRestController {
	@Autowired
	private GameService gameService;
	
//	@RequestMapping(value="/game_select_rest.do", method = RequestMethod.POST)
//	public ArrayList<MatchVO> gameInsertSelect(GameVO vo) {
//		ArrayList<MatchVO> list = gameService.svcGameSelect(vo);
//		return list;
//	}
	

}
