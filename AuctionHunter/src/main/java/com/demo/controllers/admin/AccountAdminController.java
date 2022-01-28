package com.demo.controllers.admin;

import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.Product;
import com.demo.services.AccountService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.InvoiceService;
import com.demo.services.MailSenderService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value = "accountadmin")
public class AccountAdminController {
	@Autowired
	private AccountService accountService;


	private ServletContext servletContext;
	@Autowired
	private HistoryAuctionService historyAuctionService;
	

	@Autowired
	private ProductService productService;
	
	@Autowired
	private InvoiceService invoiceService;
	
	@RequestMapping(value = {"index" }, method = RequestMethod.GET)
	public String index(ModelMap map) {
        map.put("findAccounts", accountService.findAll());
       
		return "admin/account/index";
	}
	@RequestMapping(value = "accountdetail/{id}", method = RequestMethod.GET)
	public String productDetail(@PathVariable("id")int id,ModelMap modelMap,Authentication authentication,HttpServletRequest request,Product product) {
		modelMap.put("account", accountService.find(id));
			modelMap.put("product", productService.findAllByIdAcc(id));
			modelMap.put("historyAuctions", historyAuctionService.findAllById(id));
		    
		return "admin/account/accountdetail";
	}
}
