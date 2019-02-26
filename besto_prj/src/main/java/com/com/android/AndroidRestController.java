package com.com.android;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.com.game.MatchVO;
import com.com.match.MatchService;

@RestController
public class AndroidRestController {

	MatchService service;
	
	@RequestMapping(value="/m_android_game_schedule.do" , method = RequestMethod.POST)
	public ArrayList<MatchVO> gameScheduleList(MatchVO mvo) {
		ArrayList<MatchVO> glist = service.kaeruList(mvo);
		return glist;
	}
	
	
	/*@RequestMapping(value = "/ajaxlist.do", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<BoardVO> ajaxBoardList(@RequestBody BoardVO boardVO) throws Exception {
		//��ü �Խù� �� ��������
		int totalCount = service.boardCount();
		//�Խù� ��� ��������
		ArrayList<BoardVO> list = service.boardList(boardVO.getSseq(), boardVO.getEseq()); //, vo.getSearchGubun(), vo.getSearchStr());
		if (list == null) {
			//throw new NotFoundException("selectBoardList null");
		}
		//		Map<String, Object> map = new HashMap<String, Object>();
		//		map.put("LVL_CNT", totalCount);
		//		map.put("LVL_LIST", list);

		//{ LVL_CNT:20, LVL_LIST: [{bseq:1;btitle:����},{bseq:1;btitle:����},{bseq:1;btitle:����}] }
		return list;
	}*/
	
}
