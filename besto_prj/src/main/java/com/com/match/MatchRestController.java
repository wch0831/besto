package com.com.match;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.com.game.MatchVO;

@RestController
public class MatchRestController {
	@Autowired private MatchService matchService;
	@RequestMapping(value="/todayMatchRest.do" ) public ArrayList<MatchVO> todayMatch() {return matchService.todayMatchList();}
	@RequestMapping(value="/matchRest.do") public ArrayList<MatchVO> matchList() {return matchService.matchList();}
	@RequestMapping(value="/kaeru.do") public ArrayList<MatchVO> kaeruList(@RequestParam(value="team1") String team1,@RequestParam(value="team2") String team2) {
		MatchVO mvo = new MatchVO();
		System.out.println(team1);
		System.out.println(team2);
		mvo.setMatchHometeam(Integer.parseInt(team1));
		mvo.setMatchAwayteam(Integer.parseInt(team2));
		return matchService.kaeruList(mvo);
		}
}

