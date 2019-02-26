package com.com.game;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.com.point.PointService;
import com.com.point.PointVO;
import com.mypage.com.MypageVO;

@RestController
public class GameRestController {
	@Autowired
	private GameService gameService;
	private PointService pointService;
		
		//---------------------------------------------------------------
		//board_open_window_history.jsp 기록식 게임 체크박스 체크 시 구매내역확인 자동완성 처리
		//MatchVO 클래스 :: ArrayList<RecordRateVO> recordRateVOList 프로퍼티 사용
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
		
		
		@RequestMapping(value="/passCheck.do", method = RequestMethod.POST)
		public String checkPass(HttpServletRequest request, MatchVO matchVO) {
			HttpSession session = request.getSession();
			int useq = (Integer) session.getAttribute("SESS_SEQ");
			int res = 0;
			int pres = 0;
			ArrayList<PointVO> plist = new ArrayList<PointVO>();
			
			
			for(int i=0; i<matchVO.getRecordRateVOList().size(); i++) {
				matchVO.getRecordRateVOList().get(i).setUsersSeq(useq);
				plist.get(i).setPoint_change(Integer.parseInt(matchVO.getRecordRateVOList().get(i).getInputCashList()));
				plist.get(i).setUsers_seq(useq);
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
		
		
		@RequestMapping(value="board_game_schedule.do", method = RequestMethod.POST)
		public ArrayList<MatchVO> gameSchedule(GameVO vo){
			ArrayList<MatchVO> list = gameService.svcGameAvailableSchedule(vo.getGameSeq());
			return list;
		}
		
			
		
	

}
