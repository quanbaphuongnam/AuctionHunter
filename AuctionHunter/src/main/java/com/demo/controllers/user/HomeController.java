package com.demo.controllers.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.services.ProductService;

@Controller
@RequestMapping(value={"","home"})
public class HomeController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication,ModelMap modelMap) {
		if(authentication != null) {
			if(authentication.getName().equalsIgnoreCase("admin")) {
				return "redirect:/admin/index";
			}else {
				 modelMap.put("allproduct", productService.findAll());
				  
				return "user/home/index";
			}
		}
		return "user/home/index";
	}
}
