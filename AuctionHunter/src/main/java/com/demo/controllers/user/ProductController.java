package com.demo.controllers.user;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.demo.helpers.UploadHelper;
import com.demo.models.Account;
import com.demo.models.Product;
import com.demo.services.AccountService;
import com.demo.services.BrandService;
import com.demo.services.CategoryService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value="product")
public class ProductController {
	private ServletContext servletContext;
	
	private int id;
	@Autowired
	private AccountService accountService;

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private HistoryAuctionService historyAuctionService;
	
	@RequestMapping(value="productpost", method = RequestMethod.GET)
	public String productpost(ModelMap modelMap,Authentication authentication,HttpServletRequest request,Product product) {	
		if(authentication != null) {
		HttpSession session = request.getSession();
		session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
		
		 modelMap.put("product", product);
		 modelMap.put("categorys", categoryService.findAll());
		 modelMap.put("brands", brandService.findAll());
		 
		}else {
			return "user/account/login";
		}
		 
	
		return "user/home/productpost";
	}
	@RequestMapping(value="productpost", method = RequestMethod.POST)
	public String productpost(@ModelAttribute("product") Product product,@RequestParam(value = "files") MultipartFile[] files,ModelMap modelMap,@RequestParam("category") int[] categorys,@RequestParam("brand") int[] brands,Authentication authentication,HttpServletRequest request) {	
		if(authentication != null) {
		HttpSession session = request.getSession();
		session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
		 id = (int) session.getAttribute("idAcc");
		 product.setAccount(accountService.find(id));
		product.setCreated(new Date());
		product.setStatus(0);
		product.setIsDelete(false);
		
		/*
		 * if(files != null && files.length > 0) { for(MultipartFile file : files) {
		 * String fileNameUpload = UploadHelper.upload(servletContext, file);
		 * product.getProductPhotos().add(fileNameUpload); } }
		 */
		/*
		 * if(categorys != null && categorys.length > 0) { for(int category : categorys)
		 * { product.getCategoryProducts().add(categoryService.find(category)); } }
		 */
			productService.save(product);
		}

		return "redirect:/home/index";
	}
	
	@RequestMapping(value="productdetail/{id}", method = RequestMethod.GET)
	public String productdetail(@PathVariable("id")int id,ModelMap modelMap,Authentication authentication,HttpServletRequest request,Product product) {	

		modelMap.put("product", productService.find(id));
		modelMap.put("namePhoto", productService.namePhoto(id));
		if(authentication != null) {
		HttpSession session = request.getSession();
		session.setAttribute("idPro",product.getId());
		session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
		 id = (int) session.getAttribute("idAcc");
		}
		 
		modelMap.put("historyAuctions", historyAuctionService.findAllById(id));
		return "user/home/productdetail";
	}
	
	@RequestMapping(value="productdetail", method = RequestMethod.POST)
	public String productdetail(ModelMap modelMap) {	
		//modelMap.put("product", productService.find(id));
		return "user/home/productdetail";
	}
	
	
	
}