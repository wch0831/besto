package com.com.board;

import java.util.ArrayList;
import java.util.Map;


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

	/** 占쏙옙占쏙옙占쌉쏙옙占쏙옙 */
	/*占쏙옙占쏙옙트*/
	@RequestMapping(value="/board_free.do")
	public ModelAndView freeList(Criteria cri) {
		ModelAndView mav = new ModelAndView();
		
		
		ArrayList<Map<String, Object>> list = bs.free_board_select(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bs.free_board_total());
		
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("board_free");
		System.out.println(pageMaker.getStartPage());
		System.out.println(pageMaker.getEndPage());
		System.out.println(list);
		return mav;
	}

	/*占쏢세븝옙占쏙옙*/
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
	
	

	/*댓글등록*/
	@RequestMapping(value="/board_free_reply_insert/{postSeq}.do")
	public String freeInsert(HttpServletRequest request,@PathVariable(value="postSeq") int postSeq,
			ReplyVO rvo) {
		//bvo.setUsersSeq(usersSeq);
		rvo.setUsersSeq((Integer) request.getSession().getAttribute("SESS_SEQ"));
		bs.boardFreeReplyInsert(rvo);
		
		return "redirect:/board_free_detail/"+postSeq+".do?gubun=a"; 
	}
	
//	/*댓글삭제*/
//	@RequestMapping(value="/board_free_reply_delete.do")
//	public String freeDelete(HttpServletRequest request,@PathVariable(value="postSeq") int postSeq,
//			ReplyVO rvo) {
//		//bvo.setUsersSeq(usersSeq);
//		rvo.setUsersSeq((Integer) request.getSession().getAttribute("SESS_SEQ"));
//		bs.boardFreeReplyDelete(rvo);
//		
//		return "redirect:/board_free_detail/"+postSeq+".do?gubun=a"; 
//	}
//	
	
	
	
	/*게시물등록*/
	@RequestMapping(value="/board_free_register.do", method = RequestMethod.POST)
	public String freeInsert(HttpServletRequest request,BoardFreeVO bvo) {
		//bvo.setUsersSeq(usersSeq);
		HttpSession session = request.getSession();
		bvo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		bs.boardFreeInsert(bvo);
		return "redirect:/board_free.do";   //占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙巒占� 占쏙옙占쏙옙占쏙옙 
	}

	
	/*占쌉시뱄옙 占쏙옙占쏙옙*/
	@RequestMapping(value="/board_free_update.do", method=RequestMethod.POST)
	public String freeUpdate(BoardFreeVO vo) {
		System.out.println("===================================================================================");
		bs.boardFreeUpdate(vo);
		return "redirect:/board_free.do"; 
	}
	
	
	/*게시물 삭제*/
	@RequestMapping(value="/board_free_delete/{postSeq}.do", method=RequestMethod.GET)
	public String freeDelete(BoardFreeVO vo) {
		System.out.println("===================================================================================");
		bs.boardFreeDelete(vo);
		return "redirect:/board_free.do"; 
	}
	
	

	
	
	
	/** 占쏙옙占쏙옙占싻쇽옙占쏙옙 */
	/*占쏙옙占쏙옙트*/
	@RequestMapping(value="/board_free_challenge.do" , method = RequestMethod.GET)
	public ModelAndView challengeList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardChallengeVO> brlist =bs.BoardChallengeList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_challenge");
		return mav;
	}

	/*占쏢세븝옙占쏙옙*/
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
	
	/*占쌉시뱄옙占쏙옙占�*/
	@RequestMapping(value="/board_free_challenge_register.do", method = RequestMethod.POST)
	public String chalengeInsert(HttpServletRequest request, BoardChallengeVO bvo) {
		HttpSession session = request.getSession();
		bvo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		
		bs.boardChallengeInsert(bvo);
		return "redirect:/board_free_challenge.do";   //占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙巒占� 占쏙옙占쏙옙占쏙옙 
	}
	
	
	/*占쌉시뱄옙占쏙옙占쏙옙*/
	@RequestMapping(value="/board_free_challenge_update.do", method=RequestMethod.POST)
	public String challengeUpdate(BoardChallengeVO vo) {
		System.out.println("===================================================================================");
		bs.boardChallengeUpdate(vo);
		return "redirect:/board_free_challenge.do"; 
	}
	
	
	/*게시물 삭제*/
	@RequestMapping(value="/board_free_challenge_delete/{postSeq}.do", method=RequestMethod.GET)
	public String challengeDelete(BoardChallengeVO vo) {
		System.out.println("==보드 첼린지 삭제 들어옴=================================================================================");
		System.out.println("*********************************************************************************"+vo.getPostSeq());
		bs.boardChallengDelete(vo);
		return "redirect:/board_free_challenge.do"; 
	}
	
	
	
	
	
	
	
	/** 占쏙옙占쏙옙占쏙옙橘占� */
	/*占쏙옙占쏙옙트*/
	@RequestMapping(value="/board_free_hit.do" , method = RequestMethod.GET)
	public ModelAndView hitList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardHitHistoryVO> brlist = bs.BoardHitHistoryList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_hit");
		return mav;
	}
	
	/*占쏢세븝옙占쏙옙*/
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
	
	/*占쌉시뱄옙占쏙옙占�*/
	@RequestMapping(value="/board_free_hit_register.do", method = RequestMethod.POST)
	public String boardHitInsert(HttpServletRequest request, BoardHitHistoryVO vo) {
		HttpSession session = request.getSession();
		vo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		
		bs.boardHitInsert(vo);
		return "redirect:/board_free_hit.do";   //占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙巒占� 占쏙옙占쏙옙占쏙옙 
	}
	
	/*占쌉시뱄옙 占쏙옙占쏙옙*/
	@RequestMapping(value="/board_free_hit_update.do", method=RequestMethod.POST)
	public String hitUpdate(BoardHitHistoryVO vo) {
		bs.boardHitUpdate(vo);
		return "redirect:/board_free_hit.do"; 
	}
	
	/*게시물 삭제*/
	@RequestMapping(value="/board_free_hit_delete/{postSeq}.do", method=RequestMethod.GET)
	public String hitDelete(BoardHitHistoryVO vo) {
		System.out.println("===================================================================================");
		bs.boardHitDelete(vo);
		return "redirect:/board_free_hit_update.do"; 
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
	/*占쏢세븝옙占쏙옙*/
	@RequestMapping(value="/board_free_betting_buy_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView bettingDetail(@PathVariable(value="postSeq") int postSeq, @RequestParam(value="gubun") String gubun) {
		System.out.println(postSeq + " ::: buyDetail");
		ModelAndView mav = new ModelAndView();
		BoardBuyHistoryVO bvo = bs.BoardBuyHistoryDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		if(gubun.equals("a")) {
			mav.setViewName("board_free_betting_buy_detail");
		}else if(gubun.equals("b")){
			mav.addObject("postSeq");//
			mav.setViewName("board_free_betting_buy_update");
		}
		return mav;
	}
	
	/*占쌉시뱄옙占쏙옙占�*/
	@RequestMapping(value="/board_free_betting_buy_register.do", method = RequestMethod.POST)
	public String boardBuyInsert(HttpServletRequest request, BoardBuyHistoryVO bvo) {
		HttpSession session = request.getSession();
		bvo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		bs.boardBuyInsert(bvo);
		return "redirect:/board_free_betting.do";   //占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙巒占� 占쏙옙占쏙옙占쏙옙 
	}
	
	/*게시물수정*/
	@RequestMapping(value="/board_free_betting_buy_update.do" , method=RequestMethod.POST)
	public String buyUpdate(BoardBuyHistoryVO vo) {
		bs.boardBuyUpdate(vo);
		return "redirect:/board_free_betting.do"; 
	}
	
	/*게시물 삭제*/
	@RequestMapping(value="/board_free_betting_buy_delete/{postSeq}.do", method=RequestMethod.GET)
	public String buyDelete(BoardBuyHistoryVO vo) {
		System.out.println("===================================================================================");
		bs.boardBuyDelete(vo);
		return "redirect:/board_free_betting.do"; 
	}
		
	
	
	
	
	
	/** 占쏙옙占쏙옙占쏙옙占쏙옙 */
	/*占쏙옙占쏙옙트*/
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
	
	
	/*占쏢세븝옙占쏙옙*/
	@RequestMapping(value="/board_protice/{noticeSeq}.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeDetail(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq) {
		System.out.println("OK, Google 占쏢세븝옙占쏙옙 占쏙옙占쏙옙 ===========");
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

	
	/*占쏙옙占쌉뤄옙*/	
	@RequestMapping(value="/board_protice_register.do", method = RequestMethod.POST)
	public String notice_insert(HttpServletRequest request, NoticeVO vo) {
		System.out.println("占쏙옙占쌉뤄옙");

		bs.notice_insert(vo);
		
		System.out.println(vo.getNoticeContent());
		return  "redirect:/board_protice.do";
	}
	
	
	//占쏙옙占쏙옙占쏙옙트 占쏙옙 占싯삼옙占쌔쇽옙 占싼뤄옙占쌍깍옙
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
	
		
	//占쏙옙占쏙옙占쏙옙트============================
	@RequestMapping(value="/protice_update/{noticeSeq}.do", method = RequestMethod.POST)
	public String notiUpdate(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq, NoticeVO nvo) {
		System.out.println("===update===");
		
		bs.noticeUpdate(nvo);
		
		System.out.println(nvo.getNoticeContent());
		System.out.println("===update set===");
		
		return "redirect:/board_protice.do";
		
	}
	
	//占쏙옙占쏙옙占싹깍옙========================
	@RequestMapping(value="/protice_delete/{noticeSeq}.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String notiDel(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq) {
		System.out.println("===delete===");
		
		bs.noticeDelete(noticeSeq);
		
		System.out.println(noticeSeq);
		
		System.out.println("======delete set=======");
		
		return "redirect:/board_protice.do";
		
	}
	
	//占싯삼옙==========================
	@RequestMapping(value="/notice_serach.do", method = RequestMethod.GET)
	@ResponseBody
	public ArrayList<NoticeVO> noticeSearch(@RequestParam (value="b") String b) {
		
		System.out.println("siri! 占쏙옙占쏙옙쨩 혼占쏙옙占쏙옙>>>>>>>>>>>>>>>>>" + b);
		
		ArrayList<NoticeVO> sclist = bs.noticeSearch(b);
//		
		return sclist;
	}
	
	
}
