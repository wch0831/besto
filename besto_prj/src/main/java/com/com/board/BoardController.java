package com.com.board;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	/** �����Խ��� */
	/*����Ʈ*/
	@RequestMapping(value="/board_free.do" , method = RequestMethod.GET)
	public ModelAndView freeList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardFreeVO> brlist = bs.BoardList();
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free");
		return mav;
	}

	/*�󼼺���*/
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
	
	

	/*��۵��*/
	@RequestMapping(value="/board_free_reply_insert/{postSeq}.do")
	public String freeInsert(HttpServletRequest request,@PathVariable(value="postSeq") int postSeq,
			ReplyVO rvo) {
		//bvo.setUsersSeq(usersSeq);
		rvo.setUsersSeq((Integer) request.getSession().getAttribute("SESS_SEQ"));
		bs.boardFreeReplyInsert(rvo);
		
		return "redirect:/board_free_detail/"+postSeq+".do?gubun=a"; 
	}
	
//	/*��ۻ���*/
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
	
	
	
	/*�Խù����*/
	@RequestMapping(value="/board_free_register.do", method = RequestMethod.POST)
	public String freeInsert(HttpServletRequest request,BoardFreeVO bvo) {
		//bvo.setUsersSeq(usersSeq);
		HttpSession session = request.getSession();
		bvo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		bs.boardFreeInsert(bvo);
		return "redirect:/board_free.do";   //������� ����ص� ������ 
	}

	
	/*�Խù� ����*/
	@RequestMapping(value="/board_free_update.do", method=RequestMethod.POST)
	public String freeUpdate(BoardFreeVO vo) {
		System.out.println("===================================================================================");
		bs.boardFreeUpdate(vo);
		return "redirect:/board_free.do"; 
	}
	
	
	/*�Խù� ����*/
	@RequestMapping(value="/board_free_delete/{postSeq}.do", method=RequestMethod.GET)
	public String freeDelete(BoardFreeVO vo) {
		System.out.println("===================================================================================");
		bs.boardFreeDelete(vo);
		return "redirect:/board_free.do"; 
	}
	
	

	
	
	
	/** �����м��� */
	/*����Ʈ*/
	@RequestMapping(value="/board_free_challenge.do" , method = RequestMethod.GET)
	public ModelAndView challengeList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardChallengeVO> brlist =bs.BoardChallengeList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_challenge");
		return mav;
	}

	/*�󼼺���*/
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
	
	/*�Խù����*/
	@RequestMapping(value="/board_free_challenge_register.do", method = RequestMethod.POST)
	public String chalengeInsert(HttpServletRequest request, BoardChallengeVO bvo) {
		HttpSession session = request.getSession();
		bvo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		
		bs.boardChallengeInsert(bvo);
		return "redirect:/board_free_challenge.do";   //������� ����ص� ������ 
	}
	
	
	/*�Խù�����*/
	@RequestMapping(value="/board_free_challenge_update.do", method=RequestMethod.POST)
	public String challengeUpdate(BoardChallengeVO vo) {
		System.out.println("===================================================================================");
		bs.boardChallengeUpdate(vo);
		return "redirect:/board_free_challenge.do"; 
	}
	
	
	/*�Խù� ����*/
	@RequestMapping(value="/board_free_challenge_delete/{postSeq}.do", method=RequestMethod.GET)
	public String challengeDelete(BoardChallengeVO vo) {
		System.out.println("==���� ÿ���� ���� ����=================================================================================");
		System.out.println("*********************************************************************************"+vo.getPostSeq());
		bs.boardChallengDelete(vo);
		return "redirect:/board_free_challenge.do"; 
	}
	
	
	
	
	
	
	
	/** ������й� */
	/*����Ʈ*/
	@RequestMapping(value="/board_free_hit.do" , method = RequestMethod.GET)
	public ModelAndView hitList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardHitHistoryVO> brlist = bs.BoardHitHistoryList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_hit");
		return mav;
	}
	
	/*�󼼺���*/
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
	
	/*�Խù����*/
	@RequestMapping(value="/board_free_hit_register.do", method = RequestMethod.POST)
	public String boardHitInsert(HttpServletRequest request, BoardHitHistoryVO vo) {
		HttpSession session = request.getSession();
		vo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		
		bs.boardHitInsert(vo);
		return "redirect:/board_free_hit.do";   //������� ����ص� ������ 
	}
	
	/*�Խù� ����*/
	@RequestMapping(value="/board_free_hit_update.do", method=RequestMethod.POST)
	public String hitUpdate(BoardHitHistoryVO vo) {
		bs.boardHitUpdate(vo);
		return "redirect:/board_free_hit.do"; 
	}
	
	/*�Խù� ����*/
	@RequestMapping(value="/board_free_hit_delete/{postSeq}.do", method=RequestMethod.GET)
	public String hitDelete(BoardHitHistoryVO vo) {
		System.out.println("===================================================================================");
		bs.boardHitDelete(vo);
		return "redirect:/board_free_hit_update.do"; 
	}
	
	
	/** ������й� */
	/*����Ʈ*/
	@RequestMapping(value="/board_free_betting.do" , method = RequestMethod.GET)
	public ModelAndView buyList() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardBuyHistoryVO> brlist =bs.boardBuyHistoryList();
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_betting");
		return mav;
	}
	/*�󼼺���*/
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
	
	/*�Խù����*/
	@RequestMapping(value="/board_free_betting_buy_register.do", method = RequestMethod.POST)
	public String boardBuyInsert(HttpServletRequest request, BoardBuyHistoryVO bvo) {
		HttpSession session = request.getSession();
		bvo.setUsersSeq(Integer.parseInt(session.getAttribute("SESS_SEQ").toString()));
		bs.boardBuyInsert(bvo);
		return "redirect:/board_free_betting.do";   //������� ����ص� ������ 
	}
	
	/*�Խù�����*/
	@RequestMapping(value="/board_free_betting_buy_update.do" , method=RequestMethod.POST)
	public String buyUpdate(BoardBuyHistoryVO vo) {
		bs.boardBuyUpdate(vo);
		return "redirect:/board_free_betting.do"; 
	}
	
	/*�Խù� ����*/
	@RequestMapping(value="/board_free_betting_buy_delete/{postSeq}.do", method=RequestMethod.GET)
	public String buyDelete(BoardBuyHistoryVO vo) {
		System.out.println("===================================================================================");
		bs.boardBuyDelete(vo);
		return "redirect:/board_free_betting.do"; 
	}
		
	
	
	
	
	
	
	
	
	
}
