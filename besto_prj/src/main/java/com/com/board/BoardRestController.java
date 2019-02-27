package com.com.board;



import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;



@RestController
public class BoardRestController {

	@Autowired
	BoardService bs;

	

	
	/*¥Ò±€ªË¡¶*/
	@RequestMapping(value="/board_free_reply_delete.do", method = RequestMethod.POST)
	public ArrayList<ReplyVO> freeDelete(ReplyVO rvo) {
		int pseq=rvo.getPostSeq();
		
		bs.boardFreeReplyDelete(rvo);
		ArrayList<ReplyVO> rlist = bs.free_board_reply_select_after_delete(rvo.getPostSeq());
		
		return rlist; 
	}
	
	
	
	
}
