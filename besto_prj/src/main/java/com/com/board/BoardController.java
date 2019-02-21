package com.com.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free");
		return mav;
	}

	/*�󼼺���*/
	@RequestMapping(value="/board_free_detail/{postSeq}.do", method = RequestMethod.GET)
	public ModelAndView freeDetail(HttpServletRequest request, @PathVariable(value="postSeq") int postSeq) {
		System.out.println(postSeq + " ::: ctlBoardDetail" + request.getServletContext().getContextPath());
		ModelAndView mav = new ModelAndView();
		BoardFreeVO bvo = bs.boardFreeDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		mav.setViewName("board_free_detail");
		return mav;
	}

	/*�Խù����*/
	@RequestMapping(value="/board_free_register.do", method = RequestMethod.POST)
	public String freeInsert(BoardFreeVO bvo,HttpServletRequest request) {
		bs.boardFreeInsert(bvo);
		return "redirect:/board_free.do";   //������� ����ص� ������ 
	}


	/** �����м��� */
	/*����Ʈ*/
	@RequestMapping(value="/board_free_challenge" , method = RequestMethod.GET)
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
	public ModelAndView challengeDetail(@PathVariable(value="postSeq") int postSeq) {
		System.out.println(postSeq + " ::: ctlBoardDetail");
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardChallengeVO> bvo = bs.BoardChallengeDetail(postSeq);
		mav.addObject("KEY_BVO", bvo);
		mav.setViewName("board_free_challenge_detail");
		return mav;
	}
	
	
	/** ������й� */
	/*����Ʈ*/
	@RequestMapping(value="/board_free_betting.do" , method = RequestMethod.GET)
	public ModelAndView ctlAdminBoardSelect() {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardChallengeVO> brlist =bs.BoardChallengeList();
		System.out.println(brlist.get(0).getPostSeq());
		mav.addObject("KEY_RESULT", brlist);
		mav.setViewName("board_free_betting");
		return mav;
	}
	
	/*�󼼺���*/
	
	
	/** ������й� */

	
	
	
	
	
	
	
	

}
