package com.demo.controllers.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.helpers.UploadHelper;
import com.demo.models.Account;
import com.demo.models.HistoryAuction;
import com.demo.models.Product;
import com.demo.services.AccountService;
import com.demo.services.HistoryAuctionService;
import com.demo.services.InvoiceService;
import com.demo.services.MailSenderService;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value = "account")
public class AccountController implements ServletContextAware {

	private int id;
	@Autowired
	private AccountService accountService;

	private ServletContext servletContext;
	@Autowired
	private HistoryAuctionService historyAuctionService;

	@Autowired
	private MailSenderService mailSenderService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private InvoiceService invoiceService;

	@RequestMapping(value = { "", "index" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request, Authentication authentication, ModelMap modelMap, Model model,
			Account account, RedirectAttributes redirectAttributes) {
		if (authentication != null) {
			HttpSession session = request.getSession();
			session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
			id = (int) session.getAttribute("idAcc");
			modelMap.put("account", accountService.find(id));
			return "user/account/index";
		} else {
			return "user/account/login";
		}
	}
	@RequestMapping(value = "profileview/{id}", method = RequestMethod.GET)
	public String index(@PathVariable("id") int id, Authentication authentication,  ModelMap modelMap, Model model,
			Account account, RedirectAttributes redirectAttributes) {
		if (authentication != null) {
			modelMap.put("account", accountService.find(id));
			return "user/account/profileview";
		} else {
			return "user/account/login";
		}

	}

	@RequestMapping(value = "updateProfile", method = RequestMethod.POST)
	public String updateProfile(@ModelAttribute("account") Account account, Authentication authentication,
			@RequestParam(value = "fileavatar") MultipartFile fileavatar, RedirectAttributes redirectAttributes) {
		System.out.println("file name " + fileavatar.getOriginalFilename());
		if (account.getPassword().isEmpty()) {
			account.setPassword(accountService.find(account.getId()).getPassword());
		} else {
			account.setPassword(BCrypt.hashpw(account.getPassword(), BCrypt.gensalt()));
		}
		if (fileavatar.isEmpty()) {
			account.setAvatar(accountService.find(account.getId()).getAvatar());
		} else {
			String fileNameUpload = UploadHelper.upload(servletContext, fileavatar);
			System.out.println("file name up" + fileNameUpload);
			account.setAvatar(fileNameUpload);
		}
		accountService.save(account);
		redirectAttributes.addFlashAttribute("UpdateSuccessful", "Update successful");
		return "redirect:/account/index";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(HttpServletRequest request, @RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, RedirectAttributes redirectAttributes,
			Authentication authentication) {
		if (error != null) {
			redirectAttributes.addFlashAttribute("msg", "Login unsuccessful");
			return "redirect:/account/login";
		}
		if (logout != null) {
			redirectAttributes.addFlashAttribute("msg", "Logout Successfully");
			return "redirect:/account/login";
		}
		return "user/account/login";
	}

	@RequestMapping(value = "myauctions", method = RequestMethod.GET)
	public String myauctions(Authentication authentication, HttpServletRequest request, ModelMap modelMap,
			Account account, RedirectAttributes redirectAttributes) {
		if (authentication != null) {
			HttpSession session = request.getSession();
			session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
			id = (int) session.getAttribute("idAcc");
			List<HistoryAuction> historyAuctions = new ArrayList<HistoryAuction>();
			for (String productID : historyAuctionService.findAllProductByIdAcc(id)) {
				double priceMax = 0;
				for (HistoryAuction historyAuction : historyAuctionService.findAllByIdAcc(id)) {
					if (productID.equalsIgnoreCase(historyAuction.getProduct().getId().toString())) {
						if (historyAuction.getPriceBid() > priceMax) {
							priceMax = historyAuction.getPriceBid();
						}
					}
				}
				for (HistoryAuction historyAuction : historyAuctionService.findAllByIdAcc(id)) {
					if (productID.equalsIgnoreCase(historyAuction.getProduct().getId().toString())) {
						if (historyAuction.getPriceBid() == priceMax) {
							historyAuctions.add(historyAuction);
						}
					};
				}
			}
			modelMap.put("historyAuctions", historyAuctions);
			modelMap.addAttribute("dateNow", new Date());
			return "user/account/myauctions";
		} else {
			return "user/account/login";
		}

	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap modelMap, @RequestParam(value = "checkEmail", required = false) String checkEmail,
			HttpSession session, RedirectAttributes redirectAttributes) {
		if (checkEmail != null) {
			Account account1 = (Account) session.getAttribute("account");
			accountService.save(account1);
			session.removeAttribute("account");
			redirectAttributes.addFlashAttribute("msg", "SignUpSuccess");
			return "redirect:/account/login";
		}
		Account account = new Account();
		modelMap.put("account", account);
		return "user/account/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@ModelAttribute("account") Account account, RedirectAttributes redirectAttributes,
			HttpSession session) {
		if(accountService.findByUsername(account.getUsername()) != null) {
			redirectAttributes.addFlashAttribute("msg", "CheckUsername");
			return "redirect:/account/register";
		}
		account.setAddress("");
		account.setAvatar("");
		account.setPhone("");
		account.setSex("");
		account.setDob(new Date());
		account.setIsDelete(true);
		account.setReport(0);
		String hash = new BCryptPasswordEncoder().encode(account.getPassword());
		account.setPassword(hash);
		account.setRole("ROLE_USER");
		int code = (int) Math.floor(((Math.random() * 899999) + 100000));
		System.out.println("Random Integer: " + code);
		if (mailSenderService.sendEmailConfirm(account.getEmail(), code)) {
			redirectAttributes.addFlashAttribute("msg", "Check email");
			redirectAttributes.addFlashAttribute("code", code);
			session.setAttribute("account", account);
		}
		return "redirect:/account/register";
	}

	@RequestMapping(value = "myproduct", method = RequestMethod.GET)
	public String myproduct(Authentication authentication, HttpServletRequest request, ModelMap modelMap,
			Account account, RedirectAttributes redirectAttributes, Model model) {
		if (authentication != null) {
			HttpSession session = request.getSession();
			session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
			id = (int) session.getAttribute("idAcc");
			modelMap.put("AllProducts", productService.findAllByIdAcc(id));
			modelMap.addAttribute("dateNow", new Date());
			return "user/account/myproduct";
		} else {
			return "user/account/login";
		}
	}
	
	@RequestMapping(value = "confirminvoice", method = RequestMethod.GET)
	public String ConfirmInvoice(Authentication authentication, HttpServletRequest request, ModelMap modelMap,
			Account account, RedirectAttributes redirectAttributes, Model model) {
		if (authentication != null) {
			HttpSession session = request.getSession();
			session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
			id = (int) session.getAttribute("idAcc");
			modelMap.put("Invoices", invoiceService.findAllByIdAcc2(id));
			return "user/account/confirminvoice";
		} else {
			return "user/account/login";
		}
	}

	@RequestMapping(value = "myinvoice", method = RequestMethod.GET)
	public String myinvoice(Authentication authentication, HttpServletRequest request, ModelMap modelMap,
			Account account, RedirectAttributes redirectAttributes) {
		if (authentication != null) {
			HttpSession session = request.getSession();
			session.setAttribute("idAcc", accountService.findByUsername(authentication.getName()).getId());
			id = (int) session.getAttribute("idAcc");
			modelMap.put("Invoices", invoiceService.findAllByIdAcc(id));
			return "user/account/myinvoice";
		} else {
			return "user/account/login";
		}
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
}
