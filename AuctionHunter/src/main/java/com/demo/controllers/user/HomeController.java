package com.demo.controllers.user;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.ServletContextAware;

import com.demo.services.ProductService;

@Controller
@RequestMapping(value={"","home"})
public class HomeController implements ServletContextAware{
	private ServletContext servletContext;
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication,ModelMap modelMap) {
		if(authentication != null) {
			if(authentication.getName().equalsIgnoreCase("admin")) {
				return "redirect:/admin/index";
			}else {
				 
				modelMap.put("listProducts", productService.findAll());
				return "user/home/index";
			}
		}
		modelMap.put("listProducts", productService.findAll
				());
		return "user/home/index";
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
