package com.demo.controllers.user;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.models.Product;
import com.demo.services.HistoryAuctionService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value="product")
public class ProductController {

	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private HistoryAuctionService historyAuctionService;
	
	@RequestMapping(value="productdetail/{id}", method = RequestMethod.GET)
	public String productdetail(@PathVariable("id")int id,ModelMap modelMap,HttpServletRequest request,Product product) {	

		
		
		modelMap.put("product", productService.find(id));
		HttpSession session = request.getSession();
		session.setAttribute("idPro",product.getId());
		modelMap.put("historyAuctions", historyAuctionService.findAllById(id));
		return "user/home/productdetail";
	}
	
	@RequestMapping(value="productdetail", method = RequestMethod.POST)
	public String productdetail(ModelMap modelMap) {	
		//modelMap.put("product", productService.find(id));
		return "user/home/productdetail";
	}
}
