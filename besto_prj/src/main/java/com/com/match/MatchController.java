package com.com.match;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.com.game.MatchVO;
import com.google.gson.Gson;


@Controller
public class MatchController {
	
	@Autowired
	private MatchService matchService;
	

/*	@RequestMapping(value="/todayMatch.do") 
	public void todayMatch(HttpServletRequest request,HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			Gson gson = new Gson();
			ArrayList<MatchVO> list = matchService.todayMatchList();
			String res=gson.toJson(list);
			System.out.println(res);
			response.setContentType("application/json; encoding=UTF-8");
			PrintWriter out = response.getWriter();
			out.println(res);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	
	
	

}
