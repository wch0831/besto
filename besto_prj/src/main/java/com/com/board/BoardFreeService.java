package com.com.board;

import java.util.ArrayList;

public interface BoardFreeService {

	public ArrayList<BoardFreeVO> BoardList();
	
	public BoardFreeVO bordfreedetail(int postSeq);

}
