package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;


@Controller
public class GameController {
	
	@Autowired
	private GameService gameService;
	
//	//game 생성 insert
//	@RequestMapping(value="/gameCreate.do") //get방식
//	public String gameinsert(GameVO vo) {
//		if(vo.getGameSeq() != 0) {
//			int res = gameService.svcGameInsert(vo);
//			if(res != 0) {
//				
//			}
//		} else {
//			System.out.println("나중에 트랜잭션");
//		}
//		return "index";
//	}
	
	
	@RequestMapping(value="/game_insert_rest.do", method = RequestMethod.POST)
	public String gameInsert(@RequestParam(value="matchlist") String mjson,
							@RequestParam(value="gameGubun") String gameGubun,
							@RequestParam(value="gamefinishdate") String gameFinishdate
			) {   //MatchVO로 주는대....
		System.out.println(mjson);
		Gson gson = new Gson();
		ArrayList<MatchVO> list  = gson.fromJson(mjson, new TypeToken<ArrayList<MatchVO>>(){}.getType());
		
		GameVO vo = new GameVO();
		vo.setGameGubun(gameGubun);
		vo.setGameFinishdate(gameFinishdate);
		
		System.out.println(list.size());
		System.out.println(vo.getGameGubun());
		
		if(vo.getGameGubun() != null) { //session으로
			int res = gameService.svcGameInsert(vo);
			System.out.println(res+"건 게임 등록");
			
			
			
			if(res != 0) {
				int seq = gameService.svcSelectSeq(); ///
				for(int i=0; i<list.size(); i++) {
					list.get(i).setGameSeq(seq);  //32
					list.get(i).setGameGubun(gameGubun);
				}
				int mes = gameService.svcMatchInsert(list);
				System.out.println(mes+"건 매치게임 수 등록");
			}
		} else {
			System.out.println("나중에 트랜잭션");
		}
		return "index";
	}
	
	
	

}
