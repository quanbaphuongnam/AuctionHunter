package com.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.services.MailSenderService;

@Controller
@RequestMapping(value="contactus")
public class ContactUsController {
//	@Autowired
//	private MailSenderService mailSenderService;
	@Autowired
	private MailSender mailSender;
	
	@RequestMapping(value={"","index"}, method = RequestMethod.GET)
	public String index() {	
	
		return "user/contactus/index";
	}
	@RequestMapping(value={"send"}, method = RequestMethod.POST)
	public String send (@RequestParam("phone") int phone,
			@RequestParam("subject") String subject,@RequestParam("message") String message,RedirectAttributes redirectAttributes) {
		
		String phone1 = String.valueOf(phone);
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom("aution.hunter.123@gmail.com");
		mailMessage.setTo("aution.hunter.123@gmail.com");
		mailMessage.setText(message + "\nPhone :" + phone);
		mailMessage.setSubject(subject );
		mailSender.send(mailMessage);
		redirectAttributes.addFlashAttribute("msg", "Feedback successful");
		return "redirect:/contactus/index";
	}
}
