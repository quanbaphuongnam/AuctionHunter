package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="other")
public class OtherController {
	
	@RequestMapping(value="404", method = RequestMethod.GET)
	public String index() {	
		return "user/other/404";
	}
	
}
