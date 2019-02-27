package com.com.point;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PointController {

	@Resource
	private PointService service;

	@RequestMapping(value="/recharge.do")
	   public String recharge(HttpServletRequest request,
			   @RequestParam(value="pointChange") int pointChange, PointVO vo) {
		HttpSession session = request.getSession();
			int usersSeq = (Integer) session.getAttribute("SESS_SEQ");
			vo.setUsersSeq(usersSeq);
			vo.setPointChange(pointChange);
			int res = service.pointRecharge(vo);
			int nowPoint = service.pointCheck((Integer) session.getAttribute("SESS_SEQ")).getPointCurrent();
			session.removeAttribute("SESS_POINT");
			session.setAttribute("SESS_POINT", nowPoint);
			System.out.println(session.getAttribute("SESS_POINT"));
			System.out.println(res);
			return "redirect:/selectSearch.do";
	   }
	@RequestMapping(value="/refund.do")
	   public String refund(HttpServletRequest request, PointVO vo, @RequestParam(value="pointChange") int pointChange) {
			HttpSession session = request.getSession();
			int usersSeq = (Integer) session.getAttribute("SESS_SEQ");
			vo.setUsersSeq(usersSeq);
			int res;
			if(service.pointCheck(usersSeq).getPointCurrent() - pointChange > 0) {
				res = service.pointRefund(vo);
			} else {
				res = 0;
			}
			int nowPoint = service.pointCheck((Integer) session.getAttribute("SESS_SEQ")).getPointCurrent();
			session.removeAttribute("SESS_POINT");
			session.setAttribute("SESS_POINT", nowPoint);
			System.out.println(session.getAttribute("SESS_POINT"));
			
			return "redirect:/selectSearch.do";
	   }
	
	   @RequestMapping(value="/selectSearch.do")
	   public ModelAndView selectAll(HttpServletRequest request, Criteria cri){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession();
			cri.setUsersSeq((int) session.getAttribute("SESS_SEQ"));
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(service.searchRownum((int) session.getAttribute("SESS_SEQ")));
		   //service.pointSelect((Integer) session.getAttribute("SESS_SEQ"))
//			HashMap map = new HashMap();
//			map.put("", value);
			ArrayList<Map<String, Object>> list = service.pointSelect(cri);
//			list.add(map);
			mav.setViewName("member_cash_detail");
		   mav.addObject("list",list);
		   mav.addObject("pageMaker", pageMaker);
		   System.out.println(pageMaker.getStartPage());
		   System.out.println(pageMaker.getEndPage());
		   return mav;
	   }
}
