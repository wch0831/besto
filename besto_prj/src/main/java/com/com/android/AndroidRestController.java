package com.com.android;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.com.board.BoardFreeVO;
import com.com.board.BoardService;
import com.com.game.GameService;
import com.com.game.GameVO;
import com.com.game.MatchVO;

@RestController
public class AndroidRestController {

	@Autowired
	GameService service;
	@Autowired
	BoardService bservice;

	//게임리스트
	@RequestMapping(value="/m_android_game_schedule.do", method = RequestMethod.GET)
	public ArrayList<GameVO> mGameSchedule(){
		System.out.println("controller");
		ArrayList<GameVO> list =service.svcGameSchedule();
		changeName(list);
		return list;
	}

	//게임상세리스트
	@RequestMapping(value="/m_android_game_schedule_detail.do" , method = RequestMethod.GET)
	public ArrayList<MatchVO> mGameScheduleList() {
		System.out.println("controller");
		ArrayList<MatchVO> glist = service.mGameAvailableSchedule();
		return glist;
	}

	//자유게시판 목록
	@RequestMapping(value="/m_android_board_list.do")
	public ArrayList<BoardFreeVO> mBoardList() {
		ArrayList<BoardFreeVO> blist = bservice.androidBoardFree();
//		PageMaker pageMaker = new PageMaker();
//		cri.setPage(1);
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(bservice.free_board_total());
		return blist;
	}  
	

	
	
	
	
	
	
	
	/* 게임이름만들기 */
	public ArrayList<GameVO> changeName(ArrayList<GameVO> list) {
		ArrayList<GameVO> glist = new ArrayList<GameVO>();
		for(GameVO gvo : list) {
			StringBuffer gameName =new StringBuffer();
			
			if(gvo.getGameGubun().equals("r")) {
				gameName.append("기록식");
			} else if(gvo.getGameGubun().equals("v")) {
				gameName.append("승부식");
			}
			gameName.append(gvo.getGameRoundseq()+"회차");
			gvo.setGameName(gameName.toString());
			glist.add(gvo);
		}
		return glist;
	}




}
