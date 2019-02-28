package com.com.game;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.com.point.PointVO;
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
	
	
//	@RequestMapping(value="/passCheck2.do", method = RequestMethod.POST)
//	public void checkPass2(HttpServletRequest request,@RequestBody ArrayList<RecordRateVO> list) { 
//		HttpSession session = request.getSession();
//		int useq = (Integer) session.getAttribute("SESS_SEQ");
//		int res = 0;
//		int pres = 0;
//		int betSeq=0;
//		String returnRes="";
//		System.out.println(list.size());
////		for(RecordRateVO rateVO : list) {
////			
////			
////		}		
//	}
	
	
	
//	@RequestMapping(value="/passCheck2.do", method = RequestMethod.POST)
//	public String asdasdcheckPass2(HttpServletRequest request, MatchVO matchVO) {
//		HttpSession session = request.getSession();
//		int useq = (Integer) session.getAttribute("SESS_SEQ");
//		int res = 0;
//		int pres = 0;
//		int betSeq=0;
//		String returnRes="";
//		ArrayList<PointVO> plist = new ArrayList<PointVO>();
//		System.out.println(matchVO.getRecordRateVOList().size());
//		
//		
//		System.out.println(matchVO.getRecordRateVOList().get(2).getPassWord());
//		if(matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).getPassWord().equals(gameService.svcUserPw(useq))) {
//			for(int i=0; i<matchVO.getRecordRateVOList().size()-1 ; i++) {
//				matchVO.getRecordRateVOList().get(i).setUsersSeq(useq);
//				//한줄씩 다 인설트한후에
//				//배팅테이블에 종합 한건 인설트
//
//				betSeq=gameService.selectBettingSeqNextValForSaveIntProperty();
//				
//				
//				//EXPECTATION 인설트 할부분--------
//				res += gameService.vintoryRateInsert(matchVO.getRecordRateVOList().get(i));
//				System.out.println(res + "건 게임 구매 완료");
//
//				
//				
//				returnRes="sucess";
//			}
//			
//			
//			//종합 한건인설트자리---------
//			
//			
//		}else {
//			returnRes="fail";
//		}
//		return returnRes;
//}
	
	
	
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
	public ModelAndView ctlAvailableGame(@RequestParam(value = "mode") String mode){
		ModelAndView mav=new ModelAndView(); 
		if(mode.equals("manage")) {
			ArrayList<GameVO> list = gameService.svcGameSchedule();
			mav.addObject("GLIST", list);
			mav.setViewName("board_manager_game_deadline");
		} else if(mode.equals("game")) {
			ArrayList<GameVO> list = gameService.svcAvailableGame();
			mav.addObject("ALIST", list);
			mav.setViewName("board_game_buy");		
		}
		return mav;
	}
	
	@RequestMapping(value="game_schedule.do")
	public ModelAndView gameSchedule(){
		ModelAndView mav=new ModelAndView(); 
		ArrayList<GameVO> list =gameService.svcGameSchedule();	
		mav.addObject("GLIST", list);
		mav.setViewName("board_game_schedule");		
		return mav;
	}
	
	@RequestMapping(value="game_schedule_detail.do", method = RequestMethod.GET)
	public ModelAndView gameScheduleDetail(@RequestParam(value = "gameSeq") int gameSeq){
		ModelAndView mav=new ModelAndView();
		ArrayList<MatchVO> mlist =gameService.svcGameAvailableSchedule(gameSeq);
		System.out.println(mlist.size());
		mav.addObject("MLIST", mlist);
		mav.setViewName("board_game_schedule_detail");		
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
	
	@RequestMapping(value="board_game_victory/{gameSeq}.do", method = RequestMethod.GET)
	public ModelAndView gameEntryVictory(@PathVariable(value = "gameSeq") int gameSeq){
		ModelAndView mav=new ModelAndView(); 
		GameVO gvo = gameService.svcGameVictorySelect(gameSeq);
		System.out.println(gvo.getMatchlist().get(0).getHomeTeamName() + "================="+ gvo.getMatchlist().get(0).getAwayTeamName());
		System.out.println(gvo.getMatchlist().get(0).getVicVO().getVictoryrateWin());
		mav.addObject("KEY_GVO", gvo);
		mav.setViewName("board_open_window_match");		
		return mav;
	}
	
	
	@RequestMapping(value="game_manager_deadline_detail.do", method = RequestMethod.GET)
	public ModelAndView gameManagerDeadline(@RequestParam(value = "gameSeq") int gameSeq){
		ModelAndView mav=new ModelAndView();
		ArrayList<MatchVO> mlist =gameService.svcGameDeadline(gameSeq);
		System.out.println(mlist.size());
		mav.addObject("DLIST", mlist);
		mav.setViewName("board_manager_game_deadline_detail");		
		return mav;
	}

}
