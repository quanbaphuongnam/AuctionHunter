package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.services.ProductService;

@Controller
@RequestMapping(value="product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@RequestMapping(value={"productdetail","detail"}, method = RequestMethod.GET)
	public String productdetail() {	
	
		return "user/home/productdetail";
	}
	@RequestMapping(value = { "", "search" }, method = RequestMethod.GET)
	public String search(@RequestParam("keyword")String keyword,ModelMap map) {
		map.put("searchProducts", productService.searchByKeyword(keyword));

		return "user/home/index";
	}
}
