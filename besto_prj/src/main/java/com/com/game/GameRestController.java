package com.com.game;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GameRestController {
	@Autowired
	private GameService gameService;
		
		//---------------------------------------------------------------
		//board_open_window_history.jsp 기록식 게임 체크박스 체크 시 구매내역확인 자동완성 처리
		//MatchVO 클래스 :: ArrayList<RecordRateVO> recordRateVOList 프로퍼티 사용
		//---------------------------------------------------------------
		@RequestMapping(value="/buyRestCtl.do", method = RequestMethod.POST)
		public void gameInsert(MatchVO matchVO) {
			for(RecordRateVO rateVO : matchVO.getRecordRateVOList()) {
				System.out.print(rateVO.getMatchSeqList() + " ");
				System.out.print(rateVO.getScoreList() + " ");
				System.out.print(rateVO.getRecoderateList() + " ");
				System.out.println(rateVO.getInputCashList());
			}		
		}
		
		
	
//	@RequestMapping(value="/game_select_rest.do", method = RequestMethod.POST)
//	public ArrayList<MatchVO> gameInsertSelect(GameVO vo) {
//		ArrayList<MatchVO> list = gameService.svcGameSelect(vo);
//		return list;
//	}
	

}
