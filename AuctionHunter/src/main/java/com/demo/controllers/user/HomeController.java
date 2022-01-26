package com.demo.controllers.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;

import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;
import com.demo.models.Product;
import com.demo.services.BrandService;
import com.demo.services.CategoryService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value={"","home"})
public class HomeController implements ServletContextAware{
	
	private ServletContext servletContext;
	
	private List<Product> listProducts;
	
	private List<Product> listProductHSs;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private HistoryAuctionService historyAuctionService;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(Authentication authentication,ModelMap modelMap) {
		listProducts = productService.findAllProHappenning(new Date());
		for (Product product : listProducts) {
			List<HistoryAuctionAjax> historyAuctions = new ArrayList<HistoryAuctionAjax>();
			historyAuctions = historyAuctionService.findWinnerAjax(product.getId());
			if(historyAuctions.isEmpty()) {
				
			}else {
				Double priceBid = (double) 0;
				for (HistoryAuctionAjax historyAuctionAjax : historyAuctions) {
					if(historyAuctionAjax.getPriceBid() > priceBid) {
						priceBid = historyAuctionAjax.getPriceBid();
					}
				}
				product.setPriceStart(priceBid);
			}
		}
		listProductHSs = productService.findAllProHasnotStarted(new Date());
		if(authentication != null) {
			if(authentication.getName().equalsIgnoreCase("admin")) {
				return "redirect:/admin/index";
			}else {
				modelMap.put("listProducts", listProducts);
				modelMap.put("listProductHSs", listProductHSs);
				modelMap.put("categorys", categoryService.findAll());
				modelMap.put("brands", brandService.findAll());
				return "user/home/index";
			}
		}
		modelMap.put("listProducts",listProducts);
		modelMap.put("listProductHSs", listProductHSs);
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
	/*
	 * @RequestMapping(value="category/{id}", method = RequestMethod.GET) public
	 * String category(@PathVariable("id")int id,ModelMap modelMap,Authentication
	 * authentication,HttpServletRequest request) { List<Product>
	 * listProductCategorys = new ArrayList<Product>(); List<Product>
	 * listProductCategoryHSs = new ArrayList<Product>(); for (Product product :
	 * listProducts) { for(CategoryProduct categoryProduct :
	 * product.getCategoryProducts()) { if
	 * (categoryProduct.getCategory().getId().equals(id)) {
	 * listProductCategorys.add(product); } } } for (Product product :
	 * listProductHSs) { for(CategoryProduct categoryProduct :
	 * product.getCategoryProducts()) { if
	 * (categoryProduct.getCategory().getId().equals(id)) {
	 * listProductCategoryHSs.add(product); } } } modelMap.put("listProducts",
	 * listProductCategorys); modelMap.put("listProductHSs",
	 * listProductCategoryHSs); modelMap.put("categorys",
	 * categoryService.findAll()); modelMap.put("brands", brandService.findAll());
	 * return "user/home/index"; }
	 * 
	 * @RequestMapping(value="brand/{id}", method = RequestMethod.GET) public String
	 * brand(@PathVariable("id")int id,ModelMap modelMap,Authentication
	 * authentication,HttpServletRequest request) { List<Product> listProductBrands
	 * = new ArrayList<Product>(); List<Product> listProductBrandHSs = new
	 * ArrayList<Product>(); for (Product product : listProducts) { for(BrandProduct
	 * brandProduct : product.getBrandProducts()) { if
	 * (brandProduct.getBrand().getId().equals(id)) {
	 * listProductBrands.add(product); } } } for (Product product : listProductHSs)
	 * { for(BrandProduct brandProduct : product.getBrandProducts()) { if
	 * (brandProduct.getBrand().getId().equals(id)) {
	 * listProductBrandHSs.add(product); } } } modelMap.put("listProducts",
	 * listProductBrands); modelMap.put("listProductHSs", listProductBrandHSs);
	 * modelMap.put("categorys", categoryService.findAll()); modelMap.put("brands",
	 * brandService.findAll()); return "user/home/index"; }
	 */
	
	@RequestMapping(value="amount/{min}/{max}", method = RequestMethod.GET)
	public String amount(@PathVariable("min")int min, @PathVariable("max")int max, ModelMap modelMap) {	
		List<Product> listProductAmounts = new ArrayList<Product>();
		List<Product> listProductAmountHSs = new ArrayList<Product>();
		for (Product product : listProducts) {
			List<HistoryAuctionAjax> historyAuctions = new ArrayList<HistoryAuctionAjax>();
			historyAuctions = historyAuctionService.findWinnerAjax(product.getId());
			if(historyAuctions.isEmpty()) {
				if(product.getPriceStart() >= min && product.getPriceStart() <= max) {
					listProductAmounts.add(product);
				}
			}else {
				Double priceBid = (double) 0;
				for (HistoryAuctionAjax historyAuctionAjax : historyAuctions) {
					if(historyAuctionAjax.getPriceBid() > priceBid) {
						priceBid = historyAuctionAjax.getPriceBid();
					}
				}
				if(priceBid >= min && priceBid <= max) {
					listProductAmounts.add(product);
				}
			}
		}
		for (Product product : listProductHSs) {
			if(product.getPriceStart() >= min && product.getPriceStart() <= max) {
				listProductAmountHSs.add(product);
			}
		}
		modelMap.put("listProducts", listProductAmounts);
		modelMap.put("listProductHSs", listProductAmountHSs);
		modelMap.put("categorys", categoryService.findAll());
		modelMap.put("brands", brandService.findAll());
		return "user/home/index";
	}
	
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}

}
