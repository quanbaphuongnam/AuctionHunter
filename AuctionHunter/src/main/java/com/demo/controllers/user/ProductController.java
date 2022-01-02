package com.demo.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="product")
public class ProductController {
	@RequestMapping(value={"productdetail","detail"}, method = RequestMethod.GET)
	public String productdetail() {	
	
		return "user/home/productdetail";
	}
}
