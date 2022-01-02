package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="account")
public class AccountController {
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index() {	
	
		return "user/account/index";
	}
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login() {	
	
		return "user/account/login";
	}
	@RequestMapping(value="myauctions", method = RequestMethod.GET)
	public String myauctions() {	
	
		return "user/account/myauctions";
	}
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String register() {	
	
		return "user/account/register";
	}
	@RequestMapping(value="myproduct", method = RequestMethod.GET)
	public String myproduct() {	
	
		return "user/account/myproduct";
	}
	@RequestMapping(value="myinvoice", method = RequestMethod.GET)
	public String myinvoice() {	
	
		return "user/account/myinvoice";
	}
}
