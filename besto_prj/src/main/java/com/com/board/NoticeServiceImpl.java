package com.com.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.com.mapper.BoardMapper;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private BoardMapper boardMapper ;

	@Override
	public ArrayList<NoticeVO> NoticeList() {
		return boardMapper.notice_all();
	}
	
	
}
