package com.com.game;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.com.point.PointService;
import com.com.point.PointVO;
import com.mypage.com.MypageVO;


@RestController
public class GameRestController {
	@Autowired
	private GameService gameService;
	private PointService pointService;

	//---------------------------------------------------------------
	//board_open_window_history.jsp 湲곕줉�떇 寃뚯엫 泥댄겕諛뺤뒪 泥댄겕 �떆 援щℓ�궡�뿭�솗�씤 �옄�룞�셿�꽦 泥섎━
	//MatchVO �겢�옒�뒪 :: ArrayList<RecordRateVO> recordRateVOList �봽濡쒗띁�떚 �궗�슜
	//---------------------------------------------------------------
	//		@RequestMapping(value="/buyRestCtl.do", method = RequestMethod.POST)
	//		public void gameInsert(HttpServletRequest request, MatchVO matchVO) {
	//			HttpSession session = request.getSession();
	//			int useq = (Integer) session.getAttribute("SESS_SEQ");
	//			int res = 0;
	//			
	//			for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
	//				matchVO.getRecordRateVOList().get(i).setUsersSeq(useq);
	//				System.out.println(matchVO.getRecordRateVOList().get(i).getPassWord());
	//			}
	//			
	////			matchVO.getRecordRateVOList().get(i) => RecordRateVO
	//			for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
	//				if(matchVO.getRecordRateVOList().get(i).getGameSeq() != 0) {
	//					System.out.print(matchVO.getRecordRateVOList().get(i).getGameSeq() + " ");
	//					System.out.print(matchVO.getRecordRateVOList().get(i).getMatchSeqList() + " ");
	//					System.out.print(matchVO.getRecordRateVOList().get(i).getUsersSeq() + " ");
	//					System.out.println(matchVO.getRecordRateVOList().get(i).getInputCashList());
	//
	//					res += gameService.svcRecordInsert(matchVO.getRecordRateVOList().get(i));
	//				}
	//			}
	//			System.out.println(res + "건 게임 등록 완료");
	//		}

	@RequestMapping(value="/buyVictoryRestCtl.do", method = RequestMethod.POST)
	public void victorygameInsert(MatchVO matchVO) {

		for(VictoryRateVO rateVO : matchVO.getVictoryRateVOList()) {
			if(rateVO.getMatchSeqList() != null) { 
				System.out.print(rateVO.getMatchSeqList() + " ");
				System.out.print(rateVO.getScoreList() + " ");
				System.out.print(rateVO.getRecoderateList() + " ");
				System.out.print(rateVO.getInputCashList() + " ");
				System.out.println(rateVO.getGseq());

				//				int res = gameService.
			}
		}

	}


	@RequestMapping(value="/passCheck.do", method = RequestMethod.POST)
	public String checkPass(HttpServletRequest request, MatchVO matchVO) {
		HttpSession session = request.getSession();
		int useq = (Integer) session.getAttribute("SESS_SEQ");
		int res = 0;
		int pres = 0;
		ArrayList<PointVO> plist = new ArrayList<PointVO>();


		for(int i=0; i<matchVO.getRecordRateVOList().size() - 1; i++) {
			matchVO.getRecordRateVOList().get(i).setUsersSeq(useq);
			PointVO pvo = new PointVO();
			pvo.setPointChange(Integer.parseInt(matchVO.getRecordRateVOList().get(i).getInputCashList()));
			pvo.setUsersSeq(useq);
			plist.add(pvo);
			//				plist.get(i).setPointChange(Integer.parseInt(matchVO.getRecordRateVOList().get(i).getInputCashList()));
			//				plist.get(i).setUsersSeq(useq);
		}

		if(matchVO.getRecordRateVOList().get(0).getPassWord().equals(gameService.svcUserPw(useq))) {
			//				matchVO.getRecordRateVOList().get(i) => RecordRateVO
			for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
				if(matchVO.getRecordRateVOList().get(i).getGameSeq() != 0) {
					System.out.print(matchVO.getRecordRateVOList().get(i).getGameSeq() + " ");
					System.out.print(matchVO.getRecordRateVOList().get(i).getMatchSeqList() + " ");
					System.out.print(matchVO.getRecordRateVOList().get(i).getUsersSeq() + " ");
					System.out.println(matchVO.getRecordRateVOList().get(i).getInputCashList());

					res += gameService.svcRecordInsert(matchVO.getRecordRateVOList().get(i));

					//user의 포인트 결제 목록 insert 
					//						pres += pointService.pointRecharge(plist.get(i));
				}
			}
			System.out.println(res + "건 게임 구매 완료");
			System.out.println(pres + "건 포인트 차감");

			return "sucess";
		} else {
			return "fail";
		}
	}

	@RequestMapping(value="/passCheck2.do", method = RequestMethod.POST)
	public String checkPass2(HttpServletRequest request, MatchVO matchVO) {
		HttpSession session = request.getSession();
		int useq = (Integer) session.getAttribute("SESS_SEQ");
		int res = 0;
		int pres = 0;
		int betSeq=0;
		String returnRes="";
		int gameSeq=0;
		gameSeq=matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-2).getGameSeq();
		ArrayList<PointVO> plist = new ArrayList<PointVO>();
		System.out.println(matchVO.getRecordRateVOList().size());
		betSeq=gameService.selectBettingSeqNextValForSaveIntProperty();
		if(matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).getPassWord().equals(gameService.svcUserPw(useq))) {
			for(int i=0; i<matchVO.getRecordRateVOList().size()-1 ; i++) {
				matchVO.getRecordRateVOList().get(i).setUsersSeq(useq);
				matchVO.getRecordRateVOList().get(i).setBettingSeq(betSeq);;
				//한줄씩 다 인설트한후에
				//배팅테이블에 종합 한건 인설트

				
				//EXPECTATION 인설트 할부분--------
				res += gameService.vintoryRateInsert(matchVO.getRecordRateVOList().get(i));
				System.out.println(res + "건 게임 구매 완료");
				returnRes="sucess";
				
				
			}
			
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setGameSeq(gameSeq);
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setBettingSeq(betSeq);
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setUsersSeq(useq);
		
			gameService.victoryRateInsertAfterOneInsert(matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1));
		}else {
			returnRes="fail";
		}
		return returnRes;
}




@RequestMapping(value="/cartInsert.do", method = RequestMethod.POST)
public String cartInsert(HttpServletRequest request, MatchVO matchVO) {
	HttpSession session = request.getSession();
	int useq = (Integer) session.getAttribute("SESS_SEQ");
	int res = 0;
	ArrayList<MypageVO> mlist = new ArrayList<MypageVO>();
	System.out.println(matchVO.getRecordRateVOList().size());

	for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
		System.out.print(matchVO.getRecordRateVOList().get(i).getGameSeq() + " ");
		System.out.print(matchVO.getRecordRateVOList().get(i).getMatchSeqList() + " ");
		System.out.print(useq + " ");
		System.out.println(matchVO.getRecordRateVOList().get(i).getInputCashList());
	}

	for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
		System.out.println(matchVO.getRecordRateVOList().get(i).getInputCashList());
		MypageVO mvo = new MypageVO();
		if(matchVO.getRecordRateVOList().get(i).getGameSeq() != 0) {
			mvo.setCartBattingprice(Integer.parseInt(matchVO.getRecordRateVOList().get(i).getInputCashList()));
			mvo.setGameSeq(matchVO.getRecordRateVOList().get(i).getGameSeq());
			mvo.setUsersSeq(useq);
			mlist.add(mvo);
			//mlist.get(i).setCartBattingprice(Integer.parseInt(matchVO.getRecordRateVOList().get(i).getInputCashList()));
			//mlist.get(i).setGameSeq(matchVO.getRecordRateVOList().get(i).getGameSeq());
			//mlist.get(i).setUsersSeq(useq);
		}
	}
	System.out.println(mlist.size());

	if(Integer.parseInt(matchVO.getRecordRateVOList().get(0).getInputCashList()) != 0) { //안들어오네
		//				matchVO.getRecordRateVOList().get(i) => RecordRateVO
		for(int i=0; i<mlist.size(); i++) {
			res += gameService.svcCartInsert(mlist.get(i));
		}
		System.out.println(res + "건 카트 추가 완료");

		return "sucess";
	} else {
		return "fail";
	}
}

@RequestMapping(value="/cartInsert2.do", method = RequestMethod.POST)
public String cartInsert2(HttpServletRequest request, MatchVO matchVO) {
	HttpSession session = request.getSession();
	int useq = (Integer) session.getAttribute("SESS_SEQ");
	int res = 0;
	ArrayList<MypageVO> mlist = new ArrayList<MypageVO>();
	System.out.println(matchVO.getRecordRateVOList().size());
	//			
	//			for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
	//				System.out.print(matchVO.getRecordRateVOList().get(i).getGameSeq() + " ");
	//				System.out.print(matchVO.getRecordRateVOList().get(i).getMatchSeqList() + " ");
	//				System.out.print(useq + " ");
	//				System.out.println(matchVO.getRecordRateVOList().get(i).getInputCashList());
	//			}
	//			
	//			for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
	//				System.out.println(matchVO.getRecordRateVOList().get(i).getInputCashList());
	//				MypageVO mvo = new MypageVO();
	//				if(matchVO.getRecordRateVOList().get(i).getGameSeq() != 0) {
	//					mvo.setCartBattingprice(Integer.parseInt(matchVO.getRecordRateVOList().get(i).getInputCashList()));
	//					mvo.setGameSeq(matchVO.getRecordRateVOList().get(i).getGameSeq());
	//					mvo.setUsersSeq(useq);
	//					mlist.add(mvo);
	//					//mlist.get(i).setCartBattingprice(Integer.parseInt(matchVO.getRecordRateVOList().get(i).getInputCashList()));
	//					//mlist.get(i).setGameSeq(matchVO.getRecordRateVOList().get(i).getGameSeq());
	//					//mlist.get(i).setUsersSeq(useq);
	//				}
	//			}
	//			System.out.println(mlist.size());
	//			
	//			if(Integer.parseInt(matchVO.getRecordRateVOList().get(0).getInputCashList()) != 0) { //안들어오네
	////				matchVO.getRecordRateVOList().get(i) => RecordRateVO
	//				for(int i=0; i<mlist.size(); i++) {
	//					res += gameService.svcCartInsert(mlist.get(i));
	//				}
	//				System.out.println(res + "건 카트 추가 완료");
	//				
	return "sucess";
	//			} else {
	//				return "fail";
	//			}
}


@RequestMapping(value="board_game_schedule.do", method = RequestMethod.POST)
public ArrayList<MatchVO> gameSchedule(GameVO vo){
	ArrayList<MatchVO> list = gameService.svcGameAvailableSchedule(vo.getGameSeq());
	return list;
}





}
