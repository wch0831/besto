package com.com.game;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;


@Controller
public class GameController {
	
	@Autowired
	private GameService gameService;
	
	//---------------------------------------------------------------
	//board_open_window_history.jsp 기록식 게임 체크박스 체크 시 구매내역확인 자동완성 처리
	//RecordRateVO 클래스 :: get**List() 프로퍼티 사용
	//---------------------------------------------------------------
	@RequestMapping(value="/buyCtl.do", method = RequestMethod.POST)
	public void gameInsert(@RequestBody ArrayList<RecordRateVO> list) {  
		for(RecordRateVO rateVO : list) {
			System.out.print(rateVO.getMatchSeqList() + " ");
			System.out.print(rateVO.getScoreList() + " ");
			System.out.print(rateVO.getRecoderateList() + " ");
			System.out.println(rateVO.getInputCashList());
		}		
	}
	
	
	
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
			System.out.println("아핳");
		}
		return "index";

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
	
	@RequestMapping(value="board_game_record/{gameSeq}.do", method = RequestMethod.GET)
	public ModelAndView gameEntryRecord(@PathVariable(value = "gameSeq") int gameSeq){
		ModelAndView mav=new ModelAndView(); 
		GameVO gvo = gameService.svcGameRecordSelect(gameSeq);
		System.out.println(gvo.getMatchlist().get(0).getHomeTeamName() + "================="+ gvo.getMatchlist().get(0).getAwayTeamName());
		System.out.println(gvo.getMatchlist().get(0).getRecVO().getRecoderate22());
		mav.addObject("KEY_GVO", gvo);
		mav.setViewName("board_open_window_history");		
		return mav;
	}
	
	


}
