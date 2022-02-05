
package com.demo.controllers.user;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
	
	@RequestMapping(value="findWinnerAjax", method = RequestMethod.GET,produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public List<HistoryAuctionAjax> findWinnerAjax(@RequestParam("product_id")int product_id,ModelMap modelMap,Product product) {
		return historyAuctionService.findWinnerAjax(product_id);
	}
	@RequestMapping(value = "buttonBid" , method = RequestMethod.GET,produces = MimeTypeUtils.TEXT_PLAIN_VALUE)
	public String buttonBid(@RequestParam("priceBid") String priceBid,@RequestParam("idAcc") String idAcc,@RequestParam("idPro") String idPro) {
	
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");  
		Product product = productService.find(Integer.parseInt(idPro));
		Date dateEnd = product.getEndDate();
		Date dateNow =  new Date();
		long diff = dateEnd.getTime() - dateNow.getTime();
		long diffSeconds = diff / 1000;         
		//long diffMinutes = diff / (60 * 1000);         
		//long diffHours = diff / (60 * 60 * 1000);                      
		//System.out.println("Time in minutes: " + diffMinutes + " minutes.");         
		//System.out.println("Time in hours: " + diffHours + " hours."); 
		System.out.println("Time now: " + dateNow);  
		if(diffSeconds <= 20) {
			System.out.println("Time con lai: " + diffSeconds + " s");  
	        Calendar c1 = Calendar.getInstance();
	        // Định nghĩa mốc thời gian ban đầu 
	        Date date = dateNow;
	        c1.setTime(date);
	        System.out.println("Time ban đầu : " + format.format(c1.getTime()));
	        // Tăng thêm 20s -- Sử dụng phương thức roll()
	        if(c1.getTime().getSeconds() >= 40) {
	        	 c1.roll(Calendar.SECOND, 20);
	        	 c1.roll(Calendar.MINUTE, 1);
	        }else {
	        	 c1.roll(Calendar.SECOND, 20);
	        }
	        System.out.println("Time mới : " + c1.getTime());
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
		// select new date
		Date dateStart = product.getStartDate();
		Date dateNow2 =  new Date();
		String dateNew = format.format(dateEnd);
		//if(dateNow.compareTo(dateStart) >= 0) {
//			if(dateNow2.compareTo(dateEnd) >= 0) {
//				product.setStatus(2);
//				productService.save(product);
//				return "invalid";
//			}else {
					System.err.println(dateNew);
	 			return dateNew;
			//}
		
	}
	@RequestMapping(value="findProductAjax", method = RequestMethod.GET,produces = MimeTypeUtils.TEXT_PLAIN_VALUE)
	public String findProductAjax(@RequestParam("product_id")int product_id,ModelMap modelMap) {
		Product product = productService.find(product_id);
		
		Date dateEnd = product.getEndDate();
		Date dateStart = product.getStartDate();
		Date dateNow =  new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String dateNew = format.format(dateEnd);
		//if(dateNow.compareTo(dateStart) >= 0) {
			if(dateNow.compareTo(dateEnd) >= 0) {
				product.setStatus(2);
				productService.save(product);
				return "invalid";
			}else {
					System.err.println(dateNew);
	 			return dateNew;
			}
		//} else {
			//return "invalidStart";
		//}
	}	
}