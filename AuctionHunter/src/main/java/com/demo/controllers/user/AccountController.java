package com.demo.controllers.user;

import java.util.Date;
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
import com.demo.services.AccountService;

@Controller
@RequestMapping(value="account")
public class AccountController implements ServletContextAware{
	
	
	private int id;
	@Autowired
	private AccountService accountService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	private ServletContext servletContext;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index(HttpServletRequest request,Authentication authentication,ModelMap modelMap, Model model, Account account,RedirectAttributes redirectAttributes) {	
		if(authentication != null) {
		
			HttpSession session = request.getSession();
			session.setAttribute("id", accountService.findByUsername(authentication.getName()).getId());
			 id = (int) session.getAttribute("id");
			 modelMap.put("account", accountService.find(id));
			 //model.addAttribute("id", session.getAttribute("id"));
			 //session.removeAttribute("msg");
	
			return "user/account/index";
		}else {
			return "user/account/login";
		}
		
	}
	@RequestMapping(value="updateProfile", method = RequestMethod.POST)
	public String updateProfile(@ModelAttribute("account") Account account,Authentication authentication,@RequestParam(value = "fileavatar") MultipartFile fileavatar,RedirectAttributes redirectAttributes) {
		System.out.println("file name " + fileavatar.getOriginalFilename());
		if(account.getPassword().isEmpty()){
			account.setPassword(accountService.find(account.getId()).getPassword());
		}else {
			account.setPassword(BCrypt.hashpw(account.getPassword(),BCrypt.gensalt()));
		}
		if(fileavatar.isEmpty()){
			account.setAvatar(accountService.find(account.getId()).getAvatar());
		}else {
			String fileNameUpload = UploadHelper.upload(servletContext, fileavatar);
			System.out.println("file name up" + fileNameUpload);
			account.setAvatar(fileNameUpload);
		
		}
		
		
		accountService.save(account);
		redirectAttributes.addFlashAttribute("UpdateSuccessful", "Update successful");
		return "redirect:/account/index";
	}
	
		 
		/*
		 * if(account.getPassword().isEmpty()) {
		 * account.setPassword(account.getPassword()); }else {
		 * account.setPassword(BCrypt.hashpw(account.getPassword(),BCrypt.gensalt())); }
		 * 
		 * if(BCrypt.matches(oldPassword, pass)) {
		 * if(account.getPassword().equalsIgnoreCase(confirmPassword)){
		 * 
		 * 
		 * account.setPassword(BCrypt.hashpw(account.getPassword(), BCrypt.gensalt()));
		 * this.accountService.save(account); modelMap.put("msg", "succesfull"); }else {
		 * modelMap.put("msg", "NotCorrect"); } }else { modelMap.put("msg",
		 * "OldPassNotCorrect"); }
		 */
	
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login(HttpServletRequest request,@RequestParam(value = "error", required = false) String error, 
						@RequestParam(value = "logout", required = false) String logout,
						RedirectAttributes redirectAttributes) {
		if(error != null) {
			redirectAttributes.addFlashAttribute("msg", "Login unsuccessful");
			return "redirect:/account/login";
		}
		if(logout != null) {
			redirectAttributes.addFlashAttribute("msg", "Logout Successfully");
			return "redirect:/account/login";
			
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
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
