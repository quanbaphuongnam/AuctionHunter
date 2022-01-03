package com.demo.controllers.user;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.models.Account;
import com.demo.services.AccountService;

@Controller
@RequestMapping(value="account")
public class AccountController {
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index() {	
	
		return "user/account/index";
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error, 
						@RequestParam(value = "logout", required = false) String logout,
						ModelMap modelMap) {
		if(error != null) {
			modelMap.put("msg", "Login unsuccessful");
		}
		if(logout != null) {
			modelMap.put("msg", "Logout Successfully");
		}
		return "user/account/login";
	}
	
	@RequestMapping(value="myauctions", method = RequestMethod.GET)
	public String myauctions() {	
	
		return "user/account/myauctions";
	}

	//------------------register----------------------------------
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String register(ModelMap modelMap) {	
		Account account = new Account();
		modelMap.put("account", account);
		return "user/account/register";
	}
	@RequestMapping(value="register", method = RequestMethod.POST)
	public String register(@ModelAttribute("account") Account account) {
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
		accountService.save(account);
		return "redirect:/account/login";
	}
	
	@RequestMapping(value="myproduct", method = RequestMethod.GET)
	public String myproduct() {	
	
		return "user/account/myproduct";
	}
	
	@RequestMapping(value="myinvoice", method = RequestMethod.GET)
	public String myinvoice() {	
	
		return "user/account/myinvoice";
	}
}
