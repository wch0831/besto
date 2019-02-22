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

	
	
	
	
	
	/** �������� */
	/*����Ʈ*/
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
	
	
	/*�󼼺���*/
	@RequestMapping(value="/board_protice/{noticeSeq}.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeDetail(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq) {
		System.out.println("OK, Google �󼼺��� ���� ===========");
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

	
	/*���Է�*/	
	@RequestMapping(value="/board_protice_register.do", method = RequestMethod.POST)
	public String notice_insert(HttpServletRequest request, NoticeVO vo) {
		System.out.println("���Է�");

		bs.notice_insert(vo);
		
		System.out.println(vo.getNoticeContent());
		return  "redirect:/board_protice.do";
	}
	
	
	//������Ʈ �� �˻��ؼ� �ѷ��ֱ�
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
	
		
	//������Ʈ============================
	@RequestMapping(value="/protice_update/{noticeSeq}.do", method = RequestMethod.POST)
	public String notiUpdate(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq, NoticeVO nvo) {
		System.out.println("===update===");
		
		bs.noticeUpdate(nvo);
		
		System.out.println(nvo.getNoticeContent());
		System.out.println("===update set===");
		
		return "redirect:/board_protice.do";
		
	}
	
	//�����ϱ�========================
	@RequestMapping(value="/protice_delete/{noticeSeq}.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String notiDel(HttpServletRequest request, @PathVariable(value="noticeSeq") int noticeSeq) {
		System.out.println("===delete===");
		
		bs.noticeDelete(noticeSeq);
		
		System.out.println(noticeSeq);
		
		System.out.println("======delete set=======");
		
		return "redirect:/board_protice.do";
		
	}
	
	//�˻�==========================
	@RequestMapping(value="/notice_serach.do", method = RequestMethod.GET)
	@ResponseBody
	public ArrayList<NoticeVO> noticeSearch(@RequestParam (value="b") String b) {
		
		System.out.println("siri! ����» ȥ����>>>>>>>>>>>>>>>>>" + b);
		
		ArrayList<NoticeVO> sclist = bs.noticeSearch(b);
//		
		return sclist;
	}
	

}
