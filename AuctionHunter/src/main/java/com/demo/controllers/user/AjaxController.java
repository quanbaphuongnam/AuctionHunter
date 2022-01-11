package com.demo.controllers.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;
import com.demo.models.Product;
import com.demo.services.HistoryAuctionService;
import com.demo.services.ProductService;

@RestController
@RequestMapping(value = "ajax")
public class AjaxController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private HistoryAuctionService historyAuctionService;
	
	@RequestMapping(value="findAllAjax", method = RequestMethod.GET,produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public List<HistoryAuctionAjax> findAllAjax(ModelMap modelMap) {
	
		return historyAuctionService.findAllAjax();
	}
	@RequestMapping(value="findWinnerAjax", method = RequestMethod.GET,produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public List<HistoryAuctionAjax> findWinnerAjax(@RequestParam("product_id")int product_id,ModelMap modelMap,Product product) {
	
		return historyAuctionService.findWinnerAjax(product_id);
	}
	
}
