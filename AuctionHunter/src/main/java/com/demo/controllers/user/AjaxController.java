
package com.demo.controllers.user;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.ModelMap;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.demo.models.Account;
import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;
import com.demo.models.Product;
import com.demo.services.AccountService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.ProductService;

@RestController
@RequestMapping(value = "ajax")
public class AjaxController {
	@Autowired
	private ProductService productService;
	@Autowired
	private AccountService accountService;

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
	@RequestMapping(value = "buttonBid" , method = RequestMethod.GET,produces = MimeTypeUtils.TEXT_PLAIN_VALUE)
	public String buttonBid(@RequestParam("priceBid") String priceBid,@RequestParam("idAcc") String idAcc,@RequestParam("idPro") String idPro) {
	
		HistoryAuction historyAuction = new HistoryAuction();
		historyAuction.setAccount(accountService.find(Integer.parseInt(idAcc)));
		historyAuction.setProduct(productService.find(Integer.parseInt(idPro)));
		historyAuction.setStatus(true);
		historyAuction.setPriceBid(Double.parseDouble(priceBid));
		historyAuction.setDateBid(new Date());
		historyAuction.setCode("");
		historyAuctionService.save(historyAuction);
		return "valid";
		/*
		 * if(username.equalsIgnoreCase("abc") && password.equalsIgnoreCase("123")) {
		 * return "Valid"; }else { return "Invalid"; }
		 */
	}
	@RequestMapping(value="findProductAjax", method = RequestMethod.GET,produces = MimeTypeUtils.TEXT_PLAIN_VALUE)
	public String findProductAjax(@RequestParam("product_id")int product_id,ModelMap modelMap) {
		Product product = productService.find(product_id);
		
		Date dateEnd = product.getEndDate();
		Date dateNow =  new Date();
		if(dateNow.compareTo(dateEnd) >= 0) {
			product.setStatus(2);
			return "invalid";
			
		}
		return null;
	}
	
	
	
	@RequestMapping(value = { "", "search" }, method = RequestMethod.GET,
	produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public List<String> search(@RequestParam("term")String term) {
		return productService.searchByTerm(term);
	}
	
}

