
package com.demo.controllers.user;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.ui.ModelMap;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.demo.models.Account;
import com.demo.models.Cart;
import com.demo.models.HistoryAuction;
import com.demo.models.HistoryAuctionAjax;

import com.demo.models.Product;
import com.demo.services.AccountService;
import com.demo.services.CartService;
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
	private CartService cartService;

	@Autowired
	private HistoryAuctionService historyAuctionService;
	
	@RequestMapping(value="checkusername", method = RequestMethod.POST,produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public String checkusername(@RequestParam("username")String username,ModelMap modelMap) {
		String response;
		Account account =  accountService.findByUsername(username);
		if(account != null){
			return response = " <label >Not Available</label>";
		}
		return response="";
	}
	
	@RequestMapping(value="findWinnerAjax", method = RequestMethod.GET,produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public List<HistoryAuctionAjax> findWinnerAjax(@RequestParam("product_id")int product_id,ModelMap modelMap,Product product) {
		return historyAuctionService.findWinnerAjax(product_id);
	}
	
	@RequestMapping(value="cart", method = RequestMethod.GET,produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public List<Cart> cart(Authentication authentication, HttpServletRequest request) {
		if (authentication != null) {

			HttpSession session = request.getSession();
			session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
			int id = (int) session.getAttribute("idAcc");
			return cartService.findByIdAcc(id);
		} else {
			return null;
		}
	}
	
	@RequestMapping(value = "buttonBid" , method = RequestMethod.GET,produces = MimeTypeUtils.TEXT_PLAIN_VALUE)
	public String buttonBid(@RequestParam("priceBid") String priceBid,@RequestParam("idAcc") String idAcc,@RequestParam("idPro") String idPro) {
	
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");  
		Product product = productService.find(Integer.parseInt(idPro));
		Date dateEnd = product.getEndDate();
		Date dateNow =  new Date();
		long diff = dateEnd.getTime() - dateNow.getTime();
		long diffSeconds = diff / 1000;         
		if(diffSeconds <= 20) {
	        Calendar c1 = Calendar.getInstance();
	        Date date = dateNow;
	        c1.setTime(date);
	        if(c1.getTime().getSeconds() >= 40) {
	        	 c1.roll(Calendar.SECOND, 20);
	        	 c1.roll(Calendar.MINUTE, 1);
	        }else {
	        	 c1.roll(Calendar.SECOND, 20);
	        }
	    	product.setEndDate(c1.getTime());
			productService.save(product);
	       } 
		HistoryAuction historyAuction = new HistoryAuction();
		historyAuction.setAccount(accountService.find(Integer.parseInt(idAcc)));
		historyAuction.setProduct(productService.find(Integer.parseInt(idPro)));
		historyAuction.setStatus(true);
		historyAuction.setPriceBid(Double.parseDouble(priceBid));
		historyAuction.setDateBid(new Date());
		historyAuctionService.save(historyAuction);
		String dateNew = format.format(dateEnd);
	 	return dateNew;
	}
	@RequestMapping(value="findProductAjax", method = RequestMethod.GET,produces = MimeTypeUtils.TEXT_PLAIN_VALUE)
	public String findProductAjax(@RequestParam("product_id")int product_id,ModelMap modelMap) {
		Product product = productService.find(product_id);
		
		Date dateEnd = product.getEndDate();
		Date dateStart = product.getStartDate();
		Date dateNow =  new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String dateNew = format.format(dateEnd);
		if(dateNow.after(dateStart)) {
			if(dateNow.compareTo(dateEnd) >= 0) {
				product.setStatus(2);
				List<HistoryAuctionAjax> historyAuctions = historyAuctionService.findWinnerAjax(product.getId());
				HistoryAuctionAjax historyAuctionAjax = historyAuctions.get(0);
				Account account = accountService.find(historyAuctionAjax.getAccid());
				productService.save(product);
				if(!cartService.findById(product_id)){
					Cart cart = new Cart();
					cart.setAccount(account);
					cart.setProduct(product);
					cart.setCreated(dateNow);
					cart.setStatus(1);
					cartService.save(cart);
				}
				return "invalid";
			}else {
	 			return dateNew;
			}
		} else {
			return "invalidStart";
		}
	}	
}