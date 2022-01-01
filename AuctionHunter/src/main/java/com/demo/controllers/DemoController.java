package com.demo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value={"","demo"})
public class DemoController {
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index() {	
		System.out.println("Dai dep trai :))");
		return "demo/index";
	}
}
