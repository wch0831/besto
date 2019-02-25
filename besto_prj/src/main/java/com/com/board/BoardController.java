package com.com.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import org.apache.commons.collections.bag.SynchronizedSortedBag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class BoardController {

	@Autowired
	BoardService bs;

	/** 자유게시판 */
	/*리스트*/
	@RequestMapping(value="/board_free.do" , method = RequestMethod.GET)
	public ModelAndView freeList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardFreeVO> brlist = bs.BoardList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free");
		return mav;
	}

	/*상세보기*/
	@RequestMapping(value="/board_free_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView freeDetail(@PathVariable(value="postSeq") int postSeq, @RequestParam(value="gubun") String gubun) {
		ModelAndView mav = new ModelAndView();
		BoardFreeVO bvo = bs.boardFreeDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		if(gubun.equals("a")) {
			mav.setViewName("board_free_detail");
		}else if(gubun.equals("b")){
			mav.setViewName("board_free_update");
		}
		return mav;
	}

	/*게시물등록*/
	@RequestMapping(value="/board_free_register.do", method = RequestMethod.POST)
	public String freeInsert(BoardFreeVO bvo) {
		bs.boardFreeInsert(bvo);
		return "redirect:/board_free.do";   //포워드로 사용해도 ㄱㅊ음 
	}

	
	/*게시물 수정*/
	@RequestMapping(value="/board_free_update.do", method=RequestMethod.POST)
	public String freeUpdate(BoardFreeVO vo) {
		System.out.println("===================================================================================");
		bs.boardFreeUpdate(vo);
		return "redirect:/board_free.do"; 
	}
	
	

	
	
	
	/** 도전분석방 */
	/*리스트*/
	@RequestMapping(value="/board_free_challenge.do" , method = RequestMethod.GET)
	public ModelAndView challengeList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardChallengeVO> brlist =bs.BoardChallengeList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_challenge");
		return mav;
	}

	/*상세보기*/
	@RequestMapping(value="/board_free_challenge_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView challengeDetail(@PathVariable(value="postSeq") int postSeq, @RequestParam(value="gubun") String gubun) {
		ModelAndView mav = new ModelAndView();
		BoardChallengeVO bvo = bs.BoardChallengeDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		if(gubun.equals("a")) {
			mav.setViewName("board_free_challenge_detail");
		}else if(gubun.equals("b")){
			mav.setViewName("board_free_challenge_update");
		}
		return mav;
	}
	
	/*게시물등록*/
	@RequestMapping(value="/board_free_challenge_register.do", method = RequestMethod.POST)
	public String chalengeInsert(BoardChallengeVO bvo) {
		bs.boardChallengeInsert(bvo);
		return "redirect:/board_free_challenge.do";   //포워드로 사용해도 ㄱㅊ음 
	}
	
	
	/*게시물수정*/
	@RequestMapping(value="/board_free_challenge_update.do", method=RequestMethod.POST)
	public String challengeUpdate(BoardChallengeVO vo) {
		System.out.println("===================================================================================");
		bs.boardChallengeUpdate(vo);
		return "redirect:/board_free_challenge.do"; 
	}
	
	
	
	/** 적중토론방 */
	/*리스트*/
	@RequestMapping(value="/board_free_hit.do" , method = RequestMethod.GET)
	public ModelAndView hitList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardHitHistoryVO> brlist = bs.BoardHitHistoryList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_hit");
		return mav;
	}
	
	/*상세보기*/
	@RequestMapping(value="/board_free_hit_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView hitDetail(@PathVariable(value="postSeq") int postSeq, @RequestParam(value="gubun") String gubun) {
		System.out.println(postSeq + " ::: hitDetail");
		ModelAndView mav = new ModelAndView();
		BoardHitHistoryVO bvo = bs.BoardFreeHitDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		if(gubun.equals("a")) {
			mav.setViewName("board_free_hit_detail");
		}else if(gubun.equals("b")){
			mav.setViewName("board_free_hit_update");
		}
		return mav;
	}
	
	/*게시물등록*/
	@RequestMapping(value="/board_free_hit_register.do", method = RequestMethod.POST)
	public String boardHitInsert(BoardHitHistoryVO vo) {
		bs.boardHitInsert(vo);
		return "redirect:/board_free_hit.do";   //포워드로 사용해도 ㄱㅊ음 
	}
	
	/*게시물 수정*/
	@RequestMapping(value="/board_free_hit_update.do", method=RequestMethod.POST)
	public String hitUpdate(BoardHitHistoryVO vo) {
		bs.boardHitUpdate(vo);
		return "redirect:/board_free_hit.do"; 
	}
	
	/** 베팅토론방 */
	/*리스트*/
	@RequestMapping(value="/board_free_betting.do" , method = RequestMethod.GET)
	public ModelAndView buyList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardBuyHistoryVO> brlist =bs.boardBuyHistoryList();
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_betting");
		return mav;
	}
	/*상세보기*/
	@RequestMapping(value="/board_free_betting_buy_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView bettingDetail(@PathVariable(value="postSeq") int postSeq, @RequestParam(value="gubun") String gubun) {
		System.out.println(postSeq + " ::: buyDetail");
		ModelAndView mav = new ModelAndView();
		BoardBuyHistoryVO bvo = bs.BoardBuyHistoryDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		if(gubun.equals("a")) {
			mav.setViewName("board_free_betting_buy_detail");
		}else if(gubun.equals("b")){
			mav.setViewName("board_free_betting_buy_update");
		}
		return mav;
	}
	
	/*게시물등록*/
	@RequestMapping(value="/board_free_betting_buy_register.do", method = RequestMethod.POST)
	public String boardBuyInsert(BoardBuyHistoryVO bvo) {
		bs.boardBuyInsert(bvo);
		return "redirect:/board_free_betting.do";   //포워드로 사용해도 ㄱㅊ음 
	}
	
	/*게시물수정*/
	@RequestMapping(value="/board_free_betting_buy_update.do", method=RequestMethod.POST)
	public String buyUpdate(BoardBuyHistoryVO vo) {
		bs.boardBuyUpdate(vo);
		return "redirect:/board_free_betting.do"; 
	}
		
	
	
	
	
	
	/** 공지사항 */
	/*리스트*/
	@RequestMapping(value="/board_protice.do")
	public ModelAndView ctlNoticeSelect(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		ArrayList<NoticeVO> notilist = bs.noticeList();
		
		System.out.println("1");
		System.out.println(notilist.get(1).getNoticeSeq());
		System.out.println("2");
		mav.addObject("KEY_NOTICE", notilist);
		mav.setViewName("board_protice");
		return mav;
	}
	
	
	/*상세보기*/
	@RequestMapping(value="/board_protice/{noticeSeq}.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeDetail(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq) {
		System.out.println("OK, Google 상세보기 해줘 ===========");
		String useq = "";
		try {
			useq = request.getSession().getAttribute("SESS_SEQ").toString();
		} catch(NullPointerException e) {
			useq = "guest";
		}
		
		if(!useq.equals("5") || useq.equals("guest")) {
			bs.noticeCount(noticeSeq);
		}
		
		ModelAndView mav = new ModelAndView();
		
		NoticeVO notivo = bs.noticeDetail(noticeSeq);
		
		mav.addObject("KEY_DETAIL", notivo);
		mav.setViewName("board_protice_detail");
		return mav;
	}

	
	/*글입력*/	
	@RequestMapping(value="/board_protice_register.do", method = RequestMethod.POST)
	public String notice_insert(HttpServletRequest request, NoticeVO vo) {
		System.out.println("글입력");

		bs.notice_insert(vo);
		
		System.out.println(vo.getNoticeContent());
		return  "redirect:/board_protice.do";
	}
	
	
	//업데이트 전 검색해서 뿌려주기
	@RequestMapping(value="/protice_select/{noticeSeq}.do", method = RequestMethod.POST)
	public ModelAndView noticeUpdate(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq) {
		System.out.println("===select===");
		
		ModelAndView mav = new ModelAndView();
		
		NoticeVO notivo = bs.noticeDetail(noticeSeq);
		mav.addObject("KEY_SELET", notivo);

		System.out.println("----selset set----");

		mav.setViewName("board_protice_register_update");
		return mav;
	}
	
		
	//업데이트============================
	@RequestMapping(value="/protice_update/{noticeSeq}.do", method = RequestMethod.POST)
	public String notiUpdate(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq, NoticeVO nvo) {
		System.out.println("===update===");
		
		bs.noticeUpdate(nvo);
		
		System.out.println(nvo.getNoticeContent());
		System.out.println("===update set===");
		
		return "redirect:/board_protice.do";
		
	}
	
	//삭제하기========================
	@RequestMapping(value="/protice_delete/{noticeSeq}.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String notiDel(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq) {
		System.out.println("===delete===");
		
		bs.noticeDelete(noticeSeq);
		
		System.out.println(noticeSeq);
		
		System.out.println("======delete set=======");
		
		return "redirect:/board_protice.do";
		
	}
	
	//검색==========================
	@RequestMapping(value="/notice_serach.do", method = RequestMethod.GET)
	@ResponseBody
	public ArrayList<NoticeVO> noticeSearch(@RequestParam (value="b") String b) {
		
		System.out.println("siri! 도윤쨩 혼내줘>>>>>>>>>>>>>>>>>" + b);
		
		ArrayList<NoticeVO> sclist = bs.noticeSearch(b);
//		
		return sclist;
	}
	
	
}
