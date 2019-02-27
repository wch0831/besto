package com.com.com;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;

@Controller
public class NewsController {
	
	@RequestMapping(value="/news.do", method = RequestMethod.GET)
	public ArrayList<NewsVO> newsSelect() {  
		NewsCraw nc = new NewsCraw();
		ArrayList<NewsVO> list = nc.newsCrawling("http://www.yonhapnews.co.kr/sports/1003000001.html","#content > div.contents > div.contents01 > div > div.headlines.headline-list > ul > li.section02",10);
		 for(NewsVO vo : list) {
			 System.out.println(vo.getTitle());
		 }
		return list;
	}

}
