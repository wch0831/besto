package com.com.game;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.com.point.PointService;
import com.com.point.PointVO;
import com.mypage.com.MypageVO;


@RestController
public class GameRestController {
	@Autowired
	private GameService gameService;
	private PointService pointService;


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


	@RequestMapping(value="/passCheckInsertGame.do", method = RequestMethod.POST)
	public String checkInsertPass(HttpServletRequest request, MatchVO matchVO) {
		HttpSession session = request.getSession();
		int useq = (Integer) session.getAttribute("SESS_SEQ");
		int res = 0;
		int pres = 0;
		ArrayList<PointVO> plist = new ArrayList<PointVO>();
		//record_bundle을 따로 빼서 넣는 set하는거 만들고
		int rBundleSeq = gameService.svcRecordBundleNextval();

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
					matchVO.getRecordRateVOList().get(i).setRecordBundle(rBundleSeq);
					System.out.print(matchVO.getRecordRateVOList().get(i).getGameSeq() + " ");
					System.out.print(matchVO.getRecordRateVOList().get(i).getMatchSeqList() + " ");  //expect를 빼서 넣어주고
					System.out.print(matchVO.getRecordRateVOList().get(i).getUsersSeq() + " ");
					System.out.print(matchVO.getRecordRateVOList().get(i).getRecoderateList()+ " ");
					System.out.print(matchVO.getRecordRateVOList().get(i).getMatchSeq()+ " ");
					System.out.println(matchVO.getRecordRateVOList().get(i).getInputCashList());

					res += gameService.svcRecordInsert(matchVO.getRecordRateVOList().get(i));


					//user의 포인트 결제 목록 insert 
					//						pres += pointService.pointRecharge(plist.get(i));
				}
			}



			for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {

			}
			//				game_seq=45 / match_seq_list=11 / user_seq=5 / cash=500 / recordrate = 15.6
			//				45 12 5 8000
			//				내가 선택한 match_seq가 필요하다.

			//				int bseq = gameService.svcMaxBettingSeq();
			//				int betting_Size = matchVO.getRecordRateVOList().size() - 1;
			//				BettingVO bvo = new BettingVO();
			//				bvo.setMaxSeq(bseq);
			//				bvo.setSiezSeq(betting_Size);
			//				ArrayList<BettingVO> blist = gameService.svcBettingSeqSelect(bvo); //betting_seq, game_seq  선택한 게임

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
		int betSeq=0;
		String returnRes="";
		int gameSeq=0;
		gameSeq=matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-2).getGameSeq();
		betSeq=gameService.selectBettingSeqNextValForSaveIntProperty();
		if(matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).getPassWord().equals(gameService.svcUserPw(useq))) {
			for(int i=0; i<matchVO.getRecordRateVOList().size()-1 ; i++) {
				matchVO.getRecordRateVOList().get(i).setUsersSeq(useq);
				matchVO.getRecordRateVOList().get(i).setBettingSeq(betSeq);;
				res += gameService.vintoryRateInsert(matchVO.getRecordRateVOList().get(i));
				System.out.println(res + "건 게임 구매 완료");
			}
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setGameSeq(gameSeq);
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setBettingSeq(betSeq);
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setUsersSeq(useq);

			gameService.victoryRateInsertAfterOneInsert(matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1));

			returnRes="sucess";
		}else {
			returnRes="fail";
		}
		return returnRes;
	}

	@RequestMapping(value="/cartInsertV.do", method = RequestMethod.POST)
	public String cartInsert2(HttpServletRequest request, MatchVO matchVO) {
		HttpSession session = request.getSession();
		int useq = (Integer) session.getAttribute("SESS_SEQ");
		int res = 0;
		int cartSeq=0;
		String returnRes="";
		int gameSeq=0;
		gameSeq=matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-2).getGameSeq();
		cartSeq=gameService.selectCartSeqNextValForSaveIntProperty();

		if(useq!=0) {
			for(int i=0; i<matchVO.getRecordRateVOList().size()-1 ; i++) {
				matchVO.getRecordRateVOList().get(i).setUsersSeq(useq);
				matchVO.getRecordRateVOList().get(i).setCartSeq(cartSeq);;
				res += gameService.cartVintoryRateInsert(matchVO.getRecordRateVOList().get(i));
				System.out.println(res + "건 게임 구매 완료");
			}
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setGameSeq(gameSeq);
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setCartSeq(cartSeq);
			matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1).setUsersSeq(useq);

			gameService.victoryRateInsertCart(matchVO.getRecordRateVOList().get(matchVO.getRecordRateVOList().size()-1));

			returnRes="sucess";
		}else {
			returnRes="fail";
		}
		return returnRes;		
	}



	@RequestMapping(value="board_game_schedule.do", method = RequestMethod.POST)
	public ArrayList<MatchVO> gameSchedule(GameVO vo){
		ArrayList<MatchVO> list = gameService.svcGameAvailableSchedule(vo.getGameSeq());
		return list;
	}

	@RequestMapping(value="match_deadline_check.do", method = RequestMethod.GET)
	public ArrayList<MatchVO> matchDeadlineCheck(MatchVO vo){
		int res = gameService.svcMatchStatusUpdate(vo);
		System.out.println(res +"건 매치 마감처리완료 ===============");
		ArrayList<MatchVO> mlist = gameService.svcGameDeadline(vo.getGameSeq());
		System.out.println(mlist.size());
		return mlist;
	}

	@RequestMapping(value="game_deadline.do", method = RequestMethod.GET)
	public ArrayList<GameVO> gameDeadline(GameVO vo){
		int res = gameService.svcGameStatusUpdate(vo);
		System.out.println(res +"건 게임 마감처리완료 ===============");
		ArrayList<GameVO> glist = gameService.svcGameSchedule();
		System.out.println(vo.getGameSeq());
		System.out.println(glist.size());
		return glist;
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



}
