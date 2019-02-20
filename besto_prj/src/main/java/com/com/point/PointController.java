package com.com.point;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PointController {
	
	@Resource
	private PointService service;
	
	@RequestMapping(value="/recharge.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView recharge(HttpServletRequest request, PointVO vo) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		vo.setUsers_seq(Integer.parseInt((String)session.getAttribute("SESS_SEQ")));
		int res = service.pointRecharge(vo);
		if(res != 0) mav.setViewName("member_info");
		else mav.setViewName("404");
		return mav;
	}
	@RequestMapping(value="/refund.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView refund(HttpServletRequest request, PointVO vo) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		vo.setUsers_seq(Integer.parseInt((String)session.getAttribute("SESS_SEQ")));
		int res = service.pointRecharge(vo);
		if(res != 0) mav.setViewName("member_info");
		else mav.setViewName("404");
		return mav;
	}
}
