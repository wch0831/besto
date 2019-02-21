package com.com.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView freeDetail(HttpServletRequest request, @PathVariable(value="postSeq") int postSeq) {
		System.out.println(postSeq + " ::: ctlBoardDetail" + request.getServletContext().getContextPath());
		ModelAndView mav = new ModelAndView();
		BoardFreeVO bvo = bs.boardFreeDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		mav.setViewName("board_free_detail");
		return mav;
	}

	/*게시물등록*/
	@RequestMapping(value="/board_free_register.do", method = RequestMethod.POST)
	public String freeInsert(BoardFreeVO bvo,HttpServletRequest request) {
		bs.boardFreeInsert(bvo);
		return "redirect:/board_free.do";   //포워드로 사용해도 ㄱㅊ음 
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
	public ModelAndView challengeDetail(@PathVariable(value="postSeq") int postSeq) {
		System.out.println(postSeq + " ::: ctlBoardDetail");
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardChallengeVO> bvo = bs.BoardChallengeDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		mav.setViewName("board_free_challenge_detail");
		return mav;
	}
	
	
	/** 베팅토론방 */
	/*리스트*/
	@RequestMapping(value="/board_free_betting.do" , method = RequestMethod.GET)
	public ModelAndView ctlAdminBoardSelect() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardChallengeVO> brlist =bs.BoardChallengeList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_betting");
		return mav;
	}
	
	/*상세보기*/
	
	
	/** 적중토론방 */

	
	
	
	
	
	/** 공지사항 */
	/*리스트*/
	@RequestMapping(value="/board_protice.do")
	public ModelAndView ctlNoticeSelect() {
		ModelAndView mav = new ModelAndView();
		ArrayList<NoticeVO> notilist = bs.noticeList();
		System.out.println("1");
		System.out.println(notilist.get(1).getNoticeSeq());
		System.out.println("2");
		mav.addObject("KEY_NOTICE", notilist);
		mav.setViewName("board_protice");
		return mav;
	}
	
/*	카운트
	@RequestMapping(value="/notice_count.do")
	public ModelAndView ctlNoticeCount() {
		ModelAndView mav = new ModelAndView();
		ArrayList<NoticeVO> notilist = bs.NoticeList();
		System.out.println("1");
		System.out.println(notilist.get(1).getNoticeSeq());
		System.out.println("2");
		mav.addObject("KEY_COUNT", notilist);
		mav.setViewName("notice_detail.do");
		return mav;
	}*/
	
	
	/*상세보기*/
	@RequestMapping(value="/Pritice_detail/{noticeSeq}.do", method = RequestMethod.GET)
	public String noticeDetail() {
		//System.out.println(noticeSeq + " ::: ctlBoardDetail");
		
//		ModelAndView mav = new ModelAndView();	
//		
		int noticnt= bs.noticeCount(noticeSeq);
		NoticeVO notivo = bs.noticeDetail();
		
		
		System.out.println(notivo.getNoticeTitle());
		mav.addObject("KEY_DETAIL", notivo);
		mav.setViewName("___");
		return "index";
	}
	
	
	
	
	
	
	
	
	
	

}
