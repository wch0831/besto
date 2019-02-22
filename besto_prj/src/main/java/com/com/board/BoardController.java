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
	public String freeInsert(BoardFreeVO bvo) {
		bs.boardFreeInsert(bvo);
		return "redirect:/board_free.do";   //포워드로 사용해도 ㄱㅊ음 
	}

	/*게시물 수정*/
	@RequestMapping(value="/board_free_update/{postSeq}.do", method=RequestMethod.POST)
	public String freeUpdate(BoardFreeVO vo) {
		System.out.println("===================================================================================");
		bs.boardFreeUpdate(vo);
		return "redirect:/board_free_update.jsp"; 
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
		BoardChallengeVO bvo = bs.BoardChallengeDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		mav.setViewName("board_free_challenge_detail");
		return mav;
	}
	
	/*게시물등록*/
	@RequestMapping(value="/board_free_challenge_register.do", method = RequestMethod.POST)
	public String chalengeInsert(BoardChallengeVO bvo) {
		bs.boardChallengeInsert(bvo);
		return "redirect:/board_free_challenge.do";   //포워드로 사용해도 ㄱㅊ음 
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
	@RequestMapping(value="/board_free_betting_hit_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView hitDetail(@PathVariable(value="postSeq") int postSeq) {
		System.out.println(postSeq + " ::: hitDetail");
		ModelAndView mav = new ModelAndView();
		BoardHitHistoryVO bvo = bs.BoardFreeHitDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		mav.setViewName("board_free_betting_hit_detail");
		return mav;
	}
	
	/*게시물등록*/
	@RequestMapping(value="/board_free_hit_register.do", method = RequestMethod.POST)
	public String boardHitInsert(BoardHitHistoryVO bvo) {
		bs.boardHitInsert(bvo);
		return "redirect:/board_free_hit.do";   //포워드로 사용해도 ㄱㅊ음 
	}
	
	
	
	
	
	/** 베팅토론방 */
	/*리스트*/
	@RequestMapping(value="/board_free_betting.do" , method = RequestMethod.GET)
	public ModelAndView buyList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardBuyHistoryVO> brlist =bs.BoardBuyHistoryList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_betting");
		return mav;
	}
	/*상세보기*/
	
	@RequestMapping(value="/board_free_betting_buy_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView bettingDetail(@PathVariable(value="postSeq") int postSeq) {
		System.out.println(postSeq + " ::: buyDetail");
		ModelAndView mav = new ModelAndView();
		BoardBuyHistoryVO bvo = bs.BoardBuyHistoryDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		mav.setViewName("board_free_betting_buy_detail");
		return mav;
	}
	
	/*게시물등록*/
	@RequestMapping(value="/board_free_betting_buy_register.do", method = RequestMethod.POST)
	public String boardBuyInsert(BoardBuyHistoryVO bvo) {
		bs.boardBuyInsert(bvo);
		return "redirect:/board_free_betting.do";   //포워드로 사용해도 ㄱㅊ음 
	}
	

}
