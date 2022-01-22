package com.demo.controllers.user;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;

import com.demo.services.BrandService;
import com.demo.services.CategoryService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value={"","home"})
public class HomeController implements ServletContextAware{
	
	private ServletContext servletContext;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private BrandService brandService;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication,ModelMap modelMap) {
		if(authentication != null) {
			if(authentication.getName().equalsIgnoreCase("admin")) {
				return "redirect:/admin/index";
			}else {
				 
				modelMap.put("listProducts", productService.findAllProHappenning(new Date()));
				modelMap.put("listProductHSs", productService.findAllProHasnotStarted(new Date()));
				modelMap.put("categorys", categoryService.findAll());
				modelMap.put("brands", brandService.findAll());
				return "user/home/index";
			}
		}
		modelMap.put("listProducts", productService.findAllProHappenning(new Date()));
		modelMap.put("listProductHSs", productService.findAllProHasnotStarted(new Date()));
		modelMap.put("categorys", categoryService.findAll());
		modelMap.put("brands", brandService.findAll());
		return "user/home/index";
	}
	@RequestMapping(value = {"search"}, method = RequestMethod.GET)
	public String search(@RequestParam("keyword")String keyword,ModelMap modelMap) {
		if(keyword == null) {
			modelMap.put("listProducts", productService.findAllProHappenning(new Date()));
			return "redirect:/home/index";
		}else {
			modelMap.put("searchProducts", productService.searchByKeyword(keyword));
			return "user/home/search";
		}
	}
	

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}

}
