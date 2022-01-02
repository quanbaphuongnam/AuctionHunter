package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping(value="cart")
public class CartController {
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index() {	
	
		return "user/cart/index";
	}
	@RequestMapping(value="checkout", method = RequestMethod.GET)
	public String checkout() {	
	
		return "user/cart/checkout";
	}
}
