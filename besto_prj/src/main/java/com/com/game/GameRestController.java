package com.com.game;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class GameRestController {
	@Autowired
	private GameService gameService;
		
		//---------------------------------------------------------------
		//board_open_window_history.jsp 湲곕줉�떇 寃뚯엫 泥댄겕諛뺤뒪 泥댄겕 �떆 援щℓ�궡�뿭�솗�씤 �옄�룞�셿�꽦 泥섎━
		//MatchVO �겢�옒�뒪 :: ArrayList<RecordRateVO> recordRateVOList �봽濡쒗띁�떚 �궗�슜
		//---------------------------------------------------------------
		@RequestMapping(value="/buyRestCtl.do", method = RequestMethod.POST)
		public void gameInsert(MatchVO matchVO) {
			
			for(RecordRateVO rateVO : matchVO.getRecordRateVOList()) {
				if(rateVO.getMatchSeqList() != null) { 
					System.out.print(rateVO.getMatchSeqList() + " ");
					System.out.print(rateVO.getScoreList() + " ");
					System.out.print(rateVO.getRecoderateList() + " ");
					System.out.print(rateVO.getInputCashList() + " ");
					System.out.println(rateVO.getGseq());
					
//					int res = gameService.
				}
			}
			
		}
		
		
	
//	@RequestMapping(value="/game_select_rest.do", method = RequestMethod.POST)
//	public ArrayList<MatchVO> gameInsertSelect(GameVO vo) {
//		ArrayList<MatchVO> list = gameService.svcGameSelect(vo);
//		return list;
//	}
	

}
