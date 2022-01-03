package com.demo.controllers.user;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value={"","home"})
public class HomeController {
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication) {
		System.out.println("username: " + authentication.getName());
		if(authentication.getName().equalsIgnoreCase("admin")) {
			return "redirect:/admin/index";
		}else {
			return "user/home/index";
		}
	}
}
