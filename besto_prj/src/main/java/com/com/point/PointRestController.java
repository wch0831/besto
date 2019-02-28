package com.com.point;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;



@RestController
public class PointRestController {
	
	@Autowired
	private PointService service;
	   
	   /*@RequestMapping(value="/refund.do")
	   public int refund(HttpServletRequest request, PointVO vo, @RequestParam(value="pointChange") int pointChange) {
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
			return res;
	   }*/
	   
	   @RequestMapping(value="/kakao.do", method= RequestMethod.POST)
	   public HashMap kakao(HttpServletRequest request,
			   @RequestParam(value = "access_token") String access_token,
			   @RequestParam(value = "total_amount") String total_amount) {
			System.out.println(access_token);
//			//Authorization: KakaoAK xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
			RequestUtil requestUtil = new RequestUtil();
			HashMap<String, Object> paramMap = new HashMap<String, Object>(); 
			//'Authorization: KakaoAK f29dbfecade2d6bf4d754cdcbb535a19' \
			
			paramMap.put("cid", "TC0ONETIME");
			paramMap.put("partner_order_id", "partner_order_id");
			paramMap.put("partner_user_id", "partner_user_id");
			paramMap.put("item_name", "포인트충전");
			paramMap.put("quantity", "1");
			paramMap.put("total_amount", total_amount);						////***포인트금액
			paramMap.put("vat_amount", "200");		//금액*10%
			paramMap.put("tax_free_amount", "0");	
			paramMap.put("approval_url", "http://127.0.0.1:8087/recharge.do?pointChange="+total_amount);			////***성공시 보여질 페이지
			paramMap.put("fail_url", "http://127.0.0.1:8087/kakaopay_fail");		////***실패시 보여질 페이지
			paramMap.put("cancel_url", "http://127.0.0.1:8087/kakaopay_fail");	
			HashMap<String, Object> repAccessTokenMap =  requestUtil.sendPostReturnMap("https://kapi.kakao.com/v1/payment/ready", paramMap, access_token);
			System.out.println(repAccessTokenMap);
			return repAccessTokenMap;
	   }
	   
	   
	   /*@RequestMapping(value="/selectSearch.do")
	   @ResponseBody
	   public ArrayList<PointVO> selectAll(HttpServletRequest request){
		   HttpSession session = request.getSession();
		   return service.pointSelect((Integer) session.getAttribute("SESS_SEQ"));
	   }*/
	   
	   
}
