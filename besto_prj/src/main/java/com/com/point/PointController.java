package com.com.point;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


@Controller
public class PointController {
	@Autowired
	private PointService pointservice;
}
