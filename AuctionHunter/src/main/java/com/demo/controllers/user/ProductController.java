package com.demo.controllers.user;

<<<<<<< HEAD
=======
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

>>>>>>> branch 'main' of https://github.com/quanbaphuongnam/AuctionHunter.git
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
<<<<<<< HEAD
=======
import org.springframework.web.bind.annotation.PathVariable;
>>>>>>> branch 'main' of https://github.com/quanbaphuongnam/AuctionHunter.git
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.services.ProductService;

import com.demo.models.Product;
import com.demo.services.HistoryAuctionService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value="product")
public class ProductController {
<<<<<<< HEAD
	@Autowired
	private ProductService productService;
	@RequestMapping(value={"productdetail","detail"}, method = RequestMethod.GET)
	public String productdetail() {	
=======

>>>>>>> branch 'main' of https://github.com/quanbaphuongnam/AuctionHunter.git
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private HistoryAuctionService historyAuctionService;
	
	@RequestMapping(value="productdetail/{id}", method = RequestMethod.GET)
	public String productdetail(@PathVariable("id")int id,ModelMap modelMap,HttpServletRequest request,Product product) {	

		
		
		modelMap.put("product", productService.find(id));
		modelMap.put("namePhoto", productService.namePhoto(id));
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
	@RequestMapping(value = { "", "search" }, method = RequestMethod.GET)
	public String search(@RequestParam("keyword")String keyword,ModelMap map) {
		map.put("searchProducts", productService.searchByKeyword(keyword));

		return "user/home/index";
	}
}
