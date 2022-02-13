package com.demo.controllers.user;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.helpers.UploadHelper;
import com.demo.models.Account;
import com.demo.models.Cart;
import com.demo.models.HistoryAuctionAjax;
import com.demo.models.Invoice;
import com.demo.models.Product;
import com.demo.models.ProductPhoto;
import com.demo.services.AccountService;
import com.demo.services.CartService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.InvoiceService;
@Controller
@RequestMapping(value="cart")
public class CartController {
	
	private ServletContext servletContext;

	@Autowired
	private Environment environment;
	
	private List<Cart> listCarts;
	private Cart cart;
	
	@Autowired
	private InvoiceService invoiceService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private HistoryAuctionService historyAuctionService;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(HttpServletRequest request, Authentication authentication, ModelMap modelMap) {	
		
		if (authentication != null) {
			HttpSession session = request.getSession();
			session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
			int id = (int) session.getAttribute("idAcc");
			listCarts = cartService.findByIdAcc(id);
			for (Cart cart : listCarts) {
				List<HistoryAuctionAjax> historyAuctions = new ArrayList<HistoryAuctionAjax>();
				historyAuctions = historyAuctionService.findWinnerAjax(cart.getProduct().getId());
				if (!historyAuctions.isEmpty()) {
					Double priceBid = (double) 0;
					for (HistoryAuctionAjax historyAuctionAjax : historyAuctions) {
						if (historyAuctionAjax.getPriceBid() > priceBid) {
							priceBid = historyAuctionAjax.getPriceBid();
						}
					}
					cart.getProduct().setPriceStart(priceBid);
				}
				
				SimpleDateFormat dateFormat = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss" );
				Calendar cal = Calendar.getInstance();
				try {
					cal.setTime( dateFormat.parse( cart.getCreated().toString() ) );
				} catch (ParseException e) {
					e.printStackTrace();
				}
				cal.add( Calendar.DATE, 3 );
				cart.setCreated(cal.getTime());
			}
			
			modelMap.addAttribute("dateNow", new Date());
			modelMap.put("carts", listCarts);
			return "user/cart/index";
		} else {
			return "user/account/login";
		}
		
	}
	@RequestMapping(value="checkout/{id}", method = RequestMethod.GET)
	public String checkout(@PathVariable("id") int id, ModelMap modelMap) {	
		
		if(cartService.findCountId(id)){
			cart = cartService.findId(id);
			List<HistoryAuctionAjax> historyAuctions = new ArrayList<HistoryAuctionAjax>();
			historyAuctions = historyAuctionService.findWinnerAjax(cart.getProduct().getId());
			if (!historyAuctions.isEmpty()) {
				Double priceBid = (double) 0;
				for (HistoryAuctionAjax historyAuctionAjax : historyAuctions) {
					if (historyAuctionAjax.getPriceBid() > priceBid) {
						priceBid = historyAuctionAjax.getPriceBid();
					}
				}
				cart.getProduct().setPriceStart(priceBid);
			}
			
			modelMap.put("cart", cart);
			Invoice invoice = new Invoice();
			modelMap.put("invoice", invoice);
			
			String authtoken = environment.getProperty("paypal.authtoken");
			String posturl = environment.getProperty("paypal.posturl");
			String business = environment.getProperty("paypal.business");
			String returnurl = environment.getProperty("paypal.returnurl");
			modelMap.put("authtoken", authtoken);
			modelMap.put("posturl", posturl);
			modelMap.put("business", business);
			modelMap.put("returnurl", returnurl);
			
			return "user/cart/checkout";
		}else {
			return "user/other/404";
		}
	}
	
	@RequestMapping(value = "checkout", method = RequestMethod.POST)
	public String checkout(@ModelAttribute("invoice") Invoice invoice, RedirectAttributes redirectAttributes,
			HttpSession session) {
		cart.setStatus(3);
		
		cartService.save(cart);
		System.out.println(cart.getStatus());
		System.out.println(cart.getId());
		invoice.setAccount(cart.getAccount());
		invoice.setProduct(cart.getProduct());
		invoice.setPayment("PayPal");
		invoice.setStatus((byte) 0);
		invoice.setIsDelete((byte) 0);
		invoice.setCreated(new Date());
		invoiceService.save(invoice);
		
		return "redirect:/cart/index";
	}
	
	@RequestMapping(value = "confirm/{id}", method = RequestMethod.GET)
	public String confirm(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {
        Invoice invoice1 = invoiceService.find(id);
        invoice1.setStatus((byte) 1);
        invoiceService.save(invoice1);
        
        Cart cart1 = cartService.findIdPro(invoice1.getProduct().getId());
        cart1.setStatus(0);
		cartService.save(cart1);
		
		redirectAttributes.addFlashAttribute("msg", "Confirm successful");
        return "redirect:/account/confirminvoice";
	}
}
