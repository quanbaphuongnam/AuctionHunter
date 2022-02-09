package com.demo.controllers.admin;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.models.Account;
import com.demo.models.Product;
import com.demo.services.AccountService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.InvoiceService;
import com.demo.services.MailSenderService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value = "productadmin")
public class ProductAdminController {
	@Autowired
	private ProductService productService;

	@Autowired
	private InvoiceService invoiceService;
	@Autowired
	private MailSender mailSender;
	@Autowired
	private MailSenderService mailSenderService;

	@Autowired
	private HistoryAuctionService historyAuctionService;
    @Autowired
	private AccountService accountService;

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)

	public String index(ModelMap map, @RequestParam("p") Optional<Integer> p) {
//        map.put("AllproductAdmins", productService.findAll());
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = productService.findpage(pageable, 1);
		map.addAttribute("ListProduct", page);
		
		long count2 = productService.count2();
		map.addAttribute("count", count2);
		map.addAttribute("countDelete", productService.countdelete());
		map.put("ListAccept", productService.findAccept());
		map.put("ListDelete", productService.findDeleted());

	

		return "admin/product/index";
	}

//	@RequestMapping(value = {"accept" }, method = RequestMethod.GET)
//	public String accept(ModelMap map,@RequestParam("status") int status) {
//		   map.put("ListProduct2", productService.findAccept(status));
//		return "admin/product/index2";
//	}
	@RequestMapping(value = "productdetail/{id}", method = RequestMethod.GET)
	public String productDetail(@PathVariable("id") int id, ModelMap modelMap, Authentication authentication,
			HttpServletRequest request, Product product) {
		modelMap.put("AllProducts", productService.findAllByIdAcc(id));
		modelMap.put("product", productService.find(id));
		modelMap.put("namePhoto", productService.namePhoto(id));
		modelMap.put("historyAuctions", historyAuctionService.findAllById(id));
		return "admin/product/productdetail";
	}

//	@RequestMapping(value = { "page" }, method = RequestMethod.GET)
//	public String page(ModelMap map,@RequestParam("status") int status,@RequestParam("p") Optional<Integer> p) {
////        map.put("AllproductAdmins", productService.findAll());
//        Pageable pageable = PageRequest.of(p.orElse(0),10);
//        Page<Product> page = productService.findAccept(pageable,status);
//        map.addAttribute("ListProduct",page);
//		return "admin/product/index";
//	}

	@RequestMapping(value = { "accept/{id}/{idAcc}" }, method = RequestMethod.GET)
	public String accept(@PathVariable("id") int id, @RequestParam("status") int status,@PathVariable("idAcc") int idAcc,
			RedirectAttributes redirectAttributes) {
		    Account account = accountService.find(idAcc);
			
			if (status == 1) {
				if (mailSenderService.sendEmailConfirm2(account.getEmail())) {
					Product product = productService.find(id);
					product.setStatus(1);
					productService.save(product);
					redirectAttributes.addFlashAttribute("msg", "Accept successful");
				}
				
			} else if (status == 3) {

				redirectAttributes.addFlashAttribute("msg", "Cancel");
			}
		return "redirect:/productadmin/index";
	}

	@RequestMapping(value = { "sendfb/{id}/{value}/{idpro}" }, method = RequestMethod.GET)
	public String send(@PathVariable("id") int id, @PathVariable("value") String value,@PathVariable("idpro") int idpro,
			RedirectAttributes redirectAttributes) {
		Account account = accountService.find(id);
		if (mailSenderService.sendEmailConfirm1( value,account.getEmail())) {
			Product product = productService.find(idpro);
			product.setIsDelete(false);
			product.setStatus(3);
			productService.save(product);
			redirectAttributes.addFlashAttribute("msg", "Cancel successful");		
		}
		return "redirect:/productadmin/index";
	}
}