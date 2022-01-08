package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailSenderServiceImpl implements MailSenderService {
	@Autowired
	private JavaMailSender javaMailSender;

	@Override
	public void sendEmail(String phone, String name, String subject, String message) {
		// TODO Auto-generated method stub

		SimpleMailMessage mailMessage = new SimpleMailMessage();
		// TODO Auto-generated method stub
		mailMessage.setFrom("bao0924327813@gmail.com");
		mailMessage.setTo("bao0924327813@gmail.com");
		mailMessage.setText(message);
		mailMessage.setSubject(subject);
		mailMessage.setSubject(name);
		mailMessage.setSubject(phone);
		 javaMailSender.send(mailMessage);
	}
}
