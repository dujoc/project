package com.project.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

	@RequestMapping("/main")
	public String main() {
		return "common/pages/index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "common/pages/login";
	}
}
