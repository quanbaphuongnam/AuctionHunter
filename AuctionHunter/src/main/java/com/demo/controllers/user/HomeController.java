package com.demo.controllers.user;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value={"","home"})
public class HomeController {
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication) {
		if(authentication != null) {
			if(authentication.getName().equalsIgnoreCase("admin")) {
				return "redirect:/admin/index";
			}else {
				return "user/home/index";
			}
		}
		return "user/home/index";
	}
}
