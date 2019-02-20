package com.com.match;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.com.game.MatchVO;

@RestController
public class MatchRestController {
	@Autowired private MatchService matchService;
	@RequestMapping(value="/todayMatchRest.do" ) public ArrayList<MatchVO> todayMatch() {return matchService.todayMatchList();}
	@RequestMapping(value="/matchRest.do") public ArrayList<MatchVO> matchList() {return matchService.matchList();}
}
