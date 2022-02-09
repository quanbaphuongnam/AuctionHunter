package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailSenderServiceImpl implements MailSenderService {
	@Autowired
	private JavaMailSender javaMailSender;
	
	@Autowired
	private MailSender mailSender;

	@Override
	public void sendEmail(String phone, String name, String subject, String message) {
		// TODO Auto-generated method stub

		SimpleMailMessage mailMessage = new SimpleMailMessage();
		// TODO Auto-generated method stub
		mailMessage.setFrom("aution.hunter.123@gmail.com");
		mailMessage.setTo("aution.hunter.123@gmail.com");
		mailMessage.setText(message + "\nPhone :" + phone);
		mailMessage.setSubject(subject );
		
		 javaMailSender.send(mailMessage);
	}
	
	@Override
	public boolean sendEmailConfirm(String email, int code) {
		try {
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			
			mailMessage.setFrom("daitran477@gmail.com");
			mailMessage.setTo(email);
			mailMessage.setText("Email confirmation code: " + code);
			mailMessage.setSubject("AUCTION HUNTER®");
			mailSender.send(mailMessage);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	@Override
	public boolean sendEmailConfirm1(String text, String email) {
		try {
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			
			mailMessage.setFrom("daitran477@gmail.com");
			mailMessage.setTo(email);
			mailMessage.setText("The product has been rejected! \nReason: " + text );
			mailMessage.setSubject("AUCTION HUNTER®");
			mailSender.send(mailMessage);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	@Override
	public boolean sendEmailConfirm2(String email) {
		try {
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			
			mailMessage.setFrom("daitran477@gmail.com");
			mailMessage.setTo(email);
			mailMessage.setText("The product has been approved for auction ✅");
			mailMessage.setSubject("AUCTION HUNTER®");
			mailSender.send(mailMessage);
			return true;
		} catch (Exception e) {
			return false;
		}
}
}