package com.com.match;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.com.game.MatchVO;
import com.google.gson.Gson;


@RestController
public class MatchRestController {
	
	@Autowired
	private MatchService matchService;
	
	@RequestMapping(value="/todayMatchRest.do") 
	public ArrayList<MatchVO> todayMatch() {
			ArrayList<MatchVO> list = matchService.todayMatchList();
			return list;
	}
	
}
